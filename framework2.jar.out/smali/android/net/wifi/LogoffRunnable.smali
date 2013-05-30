.class public Landroid/net/wifi/LogoffRunnable;
.super Ljava/lang/Object;
.source "LogoffRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogoffRunnable"


# instance fields
.field private handler:Landroid/net/wifi/AggregationHandler;

.field public mContext:Landroid/content/Context;

.field public urlc:Ljava/net/HttpURLConnection;

.field private xmlreader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/net/wifi/LogoffRunnable;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 53
    new-instance v8, Landroid/net/wifi/AggregationHandler;

    invoke-direct {v8}, Landroid/net/wifi/AggregationHandler;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    .line 55
    :try_start_0
    const-string v8, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v8}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    .line 56
    iget-object v8, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    const-string v9, "http://xml.org/sax/properties/lexical-handler"

    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v8, v9, v10}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget-object v8, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    iget-object v9, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 65
    :try_start_1
    const-string v8, "LogoffRunnable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Log off URL in logoffrunnable "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v8, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 67
    new-instance v6, Ljava/net/URL;

    sget-object v8, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 72
    .local v7, urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 74
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 76
    .local v5, responseCode:I
    const-string v8, "LogoffRunnable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code of HTTP GET on Logoff URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/16 v8, 0xc8

    if-ne v5, v8, :cond_3

    .line 78
    const-string v8, "LogoffRunnable"

    const-string v9, " HTTP GET on Logoff URL successful*******************"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 80
    .local v3, is:Ljava/io/InputStream;
    iget-object v8, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 81
    iget-object v8, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 82
    .local v4, msg:Landroid/net/wifi/Message;
    const-string v8, "LogoffRunnable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " msg has Wispr comment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Landroid/net/wifi/Message;->hasWispr:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v8, v4, Landroid/net/wifi/Message;->hasWispr:Z

    if-eqz v8, :cond_0

    .line 85
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, comment:Ljava/lang/String;
    const-string v8, "LogoffRunnable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "comment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v8, 0x3c

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v8, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 89
    iget-object v8, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 92
    .end local v0           #comment:Ljava/lang/String;
    :cond_0
    iget v8, v4, Landroid/net/wifi/Message;->messageType:I

    const/16 v9, 0x82

    if-ne v8, v9, :cond_1

    .line 93
    iget v8, v4, Landroid/net/wifi/Message;->responseCode:I

    sparse-switch v8, :sswitch_data_0

    .line 104
    const-string v8, "LogoffRunnable"

    const-string v9, "Unknown error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v4           #msg:Landroid/net/wifi/Message;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 112
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #responseCode:I
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_2
    :goto_2
    return-void

    .line 57
    :catch_0
    move-exception v2

    .line 59
    .local v2, e1:Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v2           #e1:Lorg/xml/sax/SAXException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v5       #responseCode:I
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_0
    :try_start_2
    const-string v8, "LogoffRunnable"

    const-string v9, "Logoff Success"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v8, 0x0

    sput-object v8, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 114
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v5           #responseCode:I
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "LogoffRunnable"

    const-string v9, "on error in executting Logoff HTTPget"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v5       #responseCode:I
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_1
    :try_start_3
    const-string v8, "LogoffRunnable"

    const-string v9, "Access gateway internal error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    :cond_3
    const-string v8, "LogoffRunnable"

    const-string v9, "Error ****************"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method
