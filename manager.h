#ifndef MANAGER_H
#define MANAGER_H


#include <QObject>
#include <QString>
#include <QUrl>
#include "filereader.h"
#include <QDebug>
#include "translator.h"

class FileReader;

class Translator;

class Manager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString title READ title WRITE setTitle NOTIFY titleChanged FINAL)
    Q_PROPERTY(QString ans1 READ ans1 WRITE setAns1 NOTIFY ans1Changed FINAL)
    Q_PROPERTY(QString ans2 READ ans2 WRITE setAns2 NOTIFY ans2Changed FINAL)
    Q_PROPERTY(QString ans3 READ ans3 WRITE setAns3 NOTIFY ans3Changed FINAL)
    Q_PROPERTY(QString ans4 READ ans4 WRITE setAns4 NOTIFY ans4Changed FINAL)
    Q_PROPERTY(QString ans5 READ ans5 WRITE setAns5 NOTIFY ans5Changed FINAL)
    Q_PROPERTY(QString isImage READ isImage WRITE setIsImage NOTIFY isImageChanged FINAL)
    Q_PROPERTY(QString curr_ans READ curr_ans WRITE setCurr_ans NOTIFY curr_ansChanged FINAL)




public:
    explicit Manager(QObject *parent = nullptr);


    QString title(){
        return p_title;
    }
    void setTitle(QString data){
        p_title = data;
    }


    QString ans1(){
        return p_ans1;
    }
    void setAns1(QString data){
        p_ans1 = data;
    }


    QString ans2(){
        return p_ans2;
    }
    void setAns2(QString data){
        p_ans2 = data;
    }


    QString ans3(){
        return p_ans3;
    }
    void setAns3(QString data){
        p_ans3 = data;
    }


    QString ans4(){
        return p_ans4;
    }
    void setAns4(QString data){
        p_ans4 = data;
    }


    QString ans5(){
        return p_ans5;
    }
    void setAns5(QString data){
        p_ans5 = data;
    }


    QString isImage(){
        return p_isImage;
    }
    void setIsImage(QString data){
        p_isImage = data;
    }


    QString curr_ans(){
        return p_curr_ans;
    }
    void setCurr_ans(QString data){
        p_curr_ans = data;
    }


    void updateAll(){
        setTitle(reader.getReadedTitle());
        setAns1(reader.getReadedAns1());
        setAns2(reader.getReadedAns2());
        setAns3(reader.getReadedAns3());
        setAns4(reader.getReadedAns4());
        setAns5(reader.getReadedAns5());
        setIsImage(reader.getIsImage());
        setCurr_ans(reader.getCurr_ans());
        emit dataReady();
    }


    QString getUrl(){
        return reader.getUrl();
    }



public slots:

    // void nextButtonClicked(){      // Вызывается после нажатия кнопки далее
    //     curr_task += 1;
    //     reader.formUrl_next(curr_task + 1);  // + 1 так как файлы начинаются с 1, а все остальные индексы с 0
    //     testUrl = reader.getUrl();
    //     qDebug() << "TEST URL is " << testUrl;
    //     reader.readFile();
    //     reader.printResults();
    //     updateAll();
    //     emit curr_ansChanged();
    // }

    void examExecuted(int index, QString lang){         // Индекс из QML и есть билет
        qDebug() << "ТЕКУЩИЙ ЭКЗАМ = " << index;
        transl.setLang(lang);
        curr_task = 1;                         // Вызывается только при новом запуске экзамена
        reader.formUrl_init(index, lang);
        reader.setInitTicket(index);
        //reader.readFile();
        //reader.printResults();
        updateAll();
    }

    // void indexChanded(int index){
    //     curr_task = index + 1;
    //     reader.formUrl_next(index + 1);
    //     reader.readFile();
    //     reader.printResults();
    //     updateAll();
    //     emit curr_ansChanged();
    // }

    // void loadData(){
    //     updateAll();
    //     emit dataReady();
    // }

    void loadDataForNext(){
        reader.formUrl_next(curr_task);  // + 1 так как файлы начинаются с 1, а все остальные индексы с 0 // здесь написана хуйня полная

        testUrl = reader.getUrl();
        qDebug() << "URL FOR NEXT_ITEM is " << testUrl;
        curr_task++;
        reader.readFile();
        //reader.printResults();
        updateAll();
    }

signals:
    void titleChanged();
    void ans1Changed();
    void ans2Changed();
    void ans3Changed();
    void ans4Changed();
    void ans5Changed();
    void isImageChanged();
    void curr_ansChanged();
    void dataReady();

private:

    QString p_title;
    QString p_ans1;
    QString p_ans2;
    QString p_ans3;
    QString p_ans4;
    QString p_ans5;
    QString p_isImage;
    QString p_curr_ans;


    Translator transl;

    FileReader reader;

    int curr_task;
    QString testUrl;
};

#endif // MANAGER_H
