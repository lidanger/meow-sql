#ifndef UI_CENTRAL_RIGHT_QUERY_PRESENTER_H
#define UI_CENTRAL_RIGHT_QUERY_PRESENTER_H

// Main Window
//   Central Right Widget
//      Query Tab

#include <QString>
#include <QIcon>

namespace meow {

namespace db {

class UserQuery;
class QueryData;

using QueryDataPtr = std::shared_ptr<QueryData>;
}

namespace models {
namespace ui {

class CentralRightQueryPresenter
{
public:
    CentralRightQueryPresenter(meow::db::UserQuery * query);

    bool isRunning() const;

    meow::db::UserQuery * query() const {
        return _query;
    }

    bool execQueries(const QString & SQL, int charPosition = -1);

    bool hasError() const;

    QString lastError() const;

    int resultsDataCount() const;

    meow::db::QueryDataPtr resultsDataAt(int index) const;

    QString resultTabCaption(int index) const;

    bool isExecQueryActionEnabled() const {
        return !isRunning();
    }

    bool isExecCurrentQueryActionEnabled() const {
        return !isRunning();
    }

    bool isCancelQueryActionEnabled() const;

private:
    meow::db::UserQuery * _query;
};

} // namespace ui
} // namespace models
} // namespace meow

#endif // UI_CENTRAL_RIGHT_QUERY_PRESENTER_H