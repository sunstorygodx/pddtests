#ifndef FILEREADER_H
#define FILEREADER_H

#include <QObject>
#include <QString>
#include <QFile>
#include <QTextStream>
#include <QDebug>

#include "translator.h"

class Translator;

class FileReader : public QObject
{
    Q_OBJECT
public:
    explicit FileReader(QObject *parent = nullptr);
    QFile file;
    bool readFile() {
        file.setFileName(p_url);
        currentLineNumber = 0;
        if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
            qDebug() << "Failed to open file:" << file.errorString();
            qDebug() << "Attempting to open file:" << file.fileName();
            return false;
        }
        QTextStream in(&file);
        while (!in.atEnd()) {
            QString line = in.readLine();
            switch (currentLineNumber) {
            case 0:
                readedTitle = line;
                break;
            case 1:
                readedAns1 = line;
                break;
            case 2:
                readedAns2 = line;
                break;
            case 3:
                readedAns3 = line;
                break;
            case 4:
                readedAns4 = line;
                break;
            case 5:
                readedAns5 = line;
                break;
            case 6:
                isImage = line;
                break;
            case 7:
                curr_ans = line;
                break;
            default:
                break;
            }
            currentLineNumber++;
        }
        file.close();
        return true;
    }

    void setLang(){
        p_lang1 = translator.lang();
        qDebug() << " LANG IS  >>>> "<< translator.lang();
    }

    void printResults(){
        qDebug() << "TITLE : " << readedTitle;
        qDebug() << "ans1 : " << readedAns1;
        qDebug() << "ans2 : " << readedAns2;
        qDebug() << "ans3 : " << readedAns3;
        qDebug() << "ans4 : " << readedAns4;
        qDebug() << "ans5 : " << readedAns5;
        qDebug() << "isImage ? :" << isImage;
        qDebug() << "curr_ans : " << curr_ans;
    }

    int getCurrentLineNumber() const {
        return currentLineNumber;
    }

    QString getUrl(){
        return p_url;
    }

    void setInitTicket(int ticket){     // Устанавливается текущий билет
        curr_ticket = ticket;
    }

    //:/assets/parse/parse_ru/1/1.txt

    void formUrl_init(int data, QString lang){        //Начальный тест
        this->lang = lang;
        p_url = ":/assets/parse/parse_" + lang + "/" + QString::number(data) + "/1.txt";
        curr_ticket = data;
        qDebug() << "INIT URL" << p_url;
    }

    void formUrl_next(int data){        // По кнопке далее
        p_url = ":/assets/parse/parse_" + lang + "/" + QString::number(curr_ticket) + "/" + QString::number(data) + ".txt";
        qDebug() << "NEXT URL" << p_url;
    }

    QString getReadedTitle(){
        return readedTitle;
    }
    QString getReadedAns1(){
        return readedAns1;
    }
    QString getReadedAns2(){
        return readedAns2;
    }
    QString getReadedAns3(){
        return readedAns3;
    }
    QString getReadedAns4(){
        return readedAns4;
    }
    QString getReadedAns5(){
        return readedAns5;
    }
    QString getIsImage(){
        return isImage;
    }
    QString getCurr_ans(){
        return curr_ans;
    }

signals:

private:
    QString p_url;
    QString readedTitle;
    QString readedAns1;
    QString readedAns2;
    QString readedAns3;
    QString readedAns4;
    QString readedAns5;
    QString isImage;
    QString curr_ans;
    int currentLineNumber{0};
    int curr_ticket;
    QString lang;
    QString p_lang1;

    Translator translator;
};

#endif // FILEREADER_H
