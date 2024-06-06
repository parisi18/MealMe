#include <AppManager.h>

AppManager::AppManager(QObject *parent) : QObject(parent){}

bool AppManager::isNightMode() const
{
    return m_isNightMode;
}

void AppManager::setIsNightMode(bool isNightMode)
{
    m_isNightMode = isNightMode;
    emit isNightModeChanged();
}
