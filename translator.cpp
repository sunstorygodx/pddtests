#include "translator.h"

Translator::Translator(QObject *parent)
    : QObject{parent}
{}

QString Translator::lang(){
    return p_lang;
}

void Translator::setLang(QString lang){
    p_lang = lang;
    qDebug() << "p_Lang === " << p_lang;
}

void Translator::translate(QString data){
    p_translator.load(":/assets/languages/tr_" + data, ".");
    qApp->installTranslator(&p_translator);
    qDebug() << "TRANSLATED TO  " << data;
    emit langChanged();
}

void Translator::chooseLang(QString data){
    setLang(data);
    translate(data);
    qDebug() << "RECEVED " << data;
}
