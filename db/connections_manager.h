#ifndef DB_CONNECTIONS_MANAGER_H
#define DB_CONNECTIONS_MANAGER_H

#include <QObject>
#include <QList>
#include <vector>
#include "connection_parameters.h"
#include "entity/session_entity.h"
#include "db/entity/entity_holder.h"

namespace meow {
namespace db {

class UserQuery;

// Intent: holds active db connections
class ConnectionsManager : public QObject, public Entity // root db entity
{
    Q_OBJECT

public:
    ConnectionsManager();
    ~ConnectionsManager();

    ConnectionPtr openDBConnection(db::ConnectionParameters & params);

    // Entity interface
    virtual int childCount() override;
    virtual SessionEntity * child(int row) override;
    int indexOf(SessionEntity * session) const;
    // Entity interface (end)

    Entity * activeEntity() const { return _activeEntity.currentEntity(); }
    void setActiveEntity(Entity * activeEntity);

    Connection * activeConnection() const;
    SessionEntity * activeSession() const { return _activeSession; }

    UserQuery * userQueryAt(size_t index);

    bool isNoOpenedConnections() const { return _connections.isEmpty(); }

    Q_SIGNAL void connectionOpened(SessionEntity * newSession);
    Q_SIGNAL void activeEntityChanged(Entity * newEntity);
    Q_SIGNAL void entityEdited(Entity * entity);

    void createEntity(Entity::Type type);

private:

    Q_SLOT void onEntityEdited(Entity * entity);

    QList <SessionEntity *> _connections;
    EntityHolder _activeEntity;
    SessionEntity * _activeSession;
    std::vector <UserQuery *> _userQueries;
};

} // namespace db
} // namespace meow

#endif // DB_CONNECTIONS_MANAGER_H
