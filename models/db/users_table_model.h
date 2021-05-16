#ifndef MODELS_USERS_TABLE_MODEL_H
#define MODELS_USERS_TABLE_MODEL_H

#include <QAbstractTableModel>
#include <memory>

namespace meow {

namespace db {
    class IUserManager;
    class User;
    using UserPtr = std::shared_ptr<User>;
}

namespace models {
namespace db {

class UsersTableModel : public QAbstractTableModel
{
public:

    enum class Columns {
        Username = 0,
        Host,
        Count
    };

    UsersTableModel(QObject *parent = nullptr);

    Qt::ItemFlags flags(const QModelIndex &index) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    QVariant headerData(int section, Qt::Orientation orientation,
                        int role = Qt::DisplayRole) const override;
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;

    int columnWidth(int column) const;

    void setUserManager(meow::db::IUserManager * userManager);

    QModelIndex appendEmptyUser();

    bool deleteUser(const meow::db::UserPtr & user);

private:

    Q_SLOT void onUserDataChanged(const meow::db::UserPtr & user);

    void removeAllRows();
    void insertAllRows();
    int userCount() const;

    meow::db::IUserManager * _userManager;
    int _rowCount;
};

} // namespace db
} // namespace models
} // namespace meow

#endif // MODELS_USERS_TABLE_MODEL_H
