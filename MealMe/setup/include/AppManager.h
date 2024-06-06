#ifndef APPMANAGER_H
#define APPMANAGER_H

#include <QObject>

class AppManager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool isNightMode READ isNightMode WRITE setIsNightMode NOTIFY isNightModeChanged)

public:
    explicit AppManager(QObject *parent = nullptr);

    bool isNightMode() const;
    void setIsNightMode(bool isNightMode);

signals:
    void isNightModeChanged();

private:
    bool m_isNightMode = false;
};

#endif // APPMANAGER_H
