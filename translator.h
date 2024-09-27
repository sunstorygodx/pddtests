#ifndef TRANSLATOR_H
#define TRANSLATOR_H

#include <QObject>
#include <QTranslator>
#include <QString>
#include <QDebug>
#include <QGuiApplication>


class Translator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString lang READ lang WRITE setLang NOTIFY langChanged FINAL)
public:
    explicit Translator(QObject *parent = nullptr);

    QString lang();

    void setLang(QString lang);

    void translate(QString data);

signals:
    void langChanged();

public slots:
    void chooseLang(QString data);

private:
    QTranslator p_translator;
    QString p_lang;

};

#endif // TRANSLATOR_H
