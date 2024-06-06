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

void AppManager::performOperation(){
    QTimer *timer = new QTimer(this);
    timer->setSingleShot(true);
    connect(timer, &QTimer::timeout, this, [this]() {
        const int result = QRandomGenerator::global()->generate();
        const QString &operationResult = result % 2 == 0
                                             ? "success"
                                             : "error";
        emit operationFinished(operationResult);
    });
    timer->start(5000);
}
