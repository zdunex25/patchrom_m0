.class public Landroid/net/wifi/AggregationRunnable$TestHttpGet;
.super Ljava/lang/Object;
.source "AggregationRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AggregationRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestHttpGet"
.end annotation


# instance fields
.field final cr:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/net/wifi/AggregationRunnable;


# direct methods
.method public constructor <init>(Landroid/net/wifi/AggregationRunnable;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget-object v0, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method private isValidLoginUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "refreshUrl"

    .prologue
    .line 162
    if-eqz p1, :cond_0

    const-string v0, "vzwwifi.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postoperation(Ljava/net/URI;)V
    .locals 20
    .parameter "loginURL"

    .prologue
    .line 177
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->isValidLoginUrl(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 181
    :try_start_0
    new-instance v14, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    .local v14, url:Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " Login URL postoperation "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 186
    .local v15, urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 187
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 188
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 189
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 190
    const-string v17, "Content-Type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v5, content:Ljava/lang/StringBuilder;
    new-instance v2, Landroid/net/wifi/VzwAuth;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/net/wifi/VzwAuth;-><init>(Landroid/content/Context;)V

    .line 195
    .local v2, auth:Landroid/net/wifi/VzwAuth;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getVZWUserName()Ljava/lang/String;

    move-result-object v16

    .line 196
    .local v16, usrName:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getVZWPassword()Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, pass:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, deviceType:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getModelName()Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, model:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/wifi/VzwAuth;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, callingId:Ljava/lang/String;
    const-string v17, "UserName="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v17, "&Password="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v17, "&device-type="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v17, "&device-model-number="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v17, "&calling-station-id="

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 208
    .local v11, outputStream:Ljava/io/OutputStream;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 209
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 210
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    .line 211
    .local v13, responseCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Response Code of HTTPS POST: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v13, v0, :cond_2

    .line 214
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 215
    .local v8, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v17

    new-instance v18, Lorg/xml/sax/InputSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface/range {v17 .. v18}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v10

    .line 217
    .local v10, msg:Landroid/net/wifi/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " msg has Wispr comment"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-boolean v0, v10, Landroid/net/wifi/Message;->hasWispr:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v0, v10, Landroid/net/wifi/Message;->hasWispr:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 219
    invoke-virtual {v10}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, comment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "comment "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/16 v17, 0x3c

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v17

    new-instance v18, Lorg/xml/sax/InputSource;

    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface/range {v17 .. v18}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v10

    .line 226
    .end local v4           #comment:Ljava/lang/String;
    :cond_0
    iget v0, v10, Landroid/net/wifi/Message;->messageType:I

    move/from16 v17, v0

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 227
    iget v0, v10, Landroid/net/wifi/Message;->responseCode:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Unknown error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v10           #msg:Landroid/net/wifi/Message;
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 251
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 258
    .end local v2           #auth:Landroid/net/wifi/VzwAuth;
    .end local v3           #callingId:Ljava/lang/String;
    .end local v5           #content:Ljava/lang/StringBuilder;
    .end local v6           #deviceType:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #model:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v12           #pass:Ljava/lang/String;
    .end local v13           #responseCode:I
    .end local v14           #url:Ljava/net/URL;
    .end local v15           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v16           #usrName:Ljava/lang/String;
    :goto_1
    return-void

    .line 229
    .restart local v2       #auth:Landroid/net/wifi/VzwAuth;
    .restart local v3       #callingId:Ljava/lang/String;
    .restart local v5       #content:Ljava/lang/StringBuilder;
    .restart local v6       #deviceType:Ljava/lang/String;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #model:Ljava/lang/String;
    .restart local v10       #msg:Landroid/net/wifi/Message;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .restart local v12       #pass:Ljava/lang/String;
    .restart local v13       #responseCode:I
    .restart local v14       #url:Ljava/net/URL;
    .restart local v15       #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v16       #usrName:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {v10}, Landroid/net/wifi/Message;->getLogoffURL()Ljava/net/URI;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17

    sput-object v17, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Login Success Logoff URL ---"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "ACTION_AGGREGATION_DELAY"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v2           #auth:Landroid/net/wifi/VzwAuth;
    .end local v3           #callingId:Ljava/lang/String;
    .end local v5           #content:Ljava/lang/StringBuilder;
    .end local v6           #deviceType:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #model:Ljava/lang/String;
    .end local v10           #msg:Landroid/net/wifi/Message;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v12           #pass:Ljava/lang/String;
    .end local v13           #responseCode:I
    .end local v14           #url:Ljava/net/URL;
    .end local v15           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v16           #usrName:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 253
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #auth:Landroid/net/wifi/VzwAuth;
    .restart local v3       #callingId:Ljava/lang/String;
    .restart local v5       #content:Ljava/lang/StringBuilder;
    .restart local v6       #deviceType:Ljava/lang/String;
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #model:Ljava/lang/String;
    .restart local v10       #msg:Landroid/net/wifi/Message;
    .restart local v11       #outputStream:Ljava/io/OutputStream;
    .restart local v12       #pass:Ljava/lang/String;
    .restart local v13       #responseCode:I
    .restart local v14       #url:Ljava/net/URL;
    .restart local v15       #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .restart local v16       #usrName:Ljava/lang/String;
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Login failed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Access gateway internal error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    .end local v8           #is:Ljava/io/InputStream;
    .end local v10           #msg:Landroid/net/wifi/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Error ****************"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 256
    .end local v2           #auth:Landroid/net/wifi/VzwAuth;
    .end local v3           #callingId:Ljava/lang/String;
    .end local v5           #content:Ljava/lang/StringBuilder;
    .end local v6           #deviceType:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #model:Ljava/lang/String;
    .end local v11           #outputStream:Ljava/io/OutputStream;
    .end local v12           #pass:Ljava/lang/String;
    .end local v13           #responseCode:I
    .end local v14           #url:Ljava/net/URL;
    .end local v15           #urlConnection:Ljavax/net/ssl/HttpsURLConnection;
    .end local v16           #usrName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    move-object/from16 v17, v0

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "Redirect Message doesnot have a valid login URL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public executeHttpGet()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string v8, "http://www.verizon.com/"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 101
    .local v7, urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 103
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "response code of HTTP GET "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0x12e

    if-ne v8, v9, :cond_0

    .line 105
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 106
    .local v2, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v8, "Location"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, refreshUrl:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v6, Ljava/net/URL;

    .end local v6           #url:Ljava/net/URL;
    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v6       #url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 111
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 149
    .end local v2           #header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5           #refreshUrl:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 155
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_1
    return-void

    .line 114
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "XML parsing for login URL"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 116
    .local v3, is:Ljava/io/InputStream;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 117
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 118
    .local v4, msg:Landroid/net/wifi/Message;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " msg has Wispr comment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v4, Landroid/net/wifi/Message;->hasWispr:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v8, v4, Landroid/net/wifi/Message;->hasWispr:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 120
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, comment:Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

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

    .line 122
    const/16 v8, 0x3c

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 124
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v4

    .line 127
    .end local v0           #comment:Ljava/lang/String;
    :cond_1
    iget v8, v4, Landroid/net/wifi/Message;->messageType:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_2

    .line 128
    iget v8, v4, Landroid/net/wifi/Message;->responseCode:I

    sparse-switch v8, :sswitch_data_0

    .line 140
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Unknown error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 150
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 151
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 130
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_0
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "login URL ---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/net/wifi/Message;->getLoginURL()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v4}, Landroid/net/wifi/Message;->getLoginURL()Ljava/net/URI;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->postoperation(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 152
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/net/wifi/Message;
    .end local v6           #url:Ljava/net/URL;
    .end local v7           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v1

    .line 153
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_1

    .line 134
    .end local v1           #e:Lorg/xml/sax/SAXException;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #msg:Landroid/net/wifi/Message;
    .restart local v6       #url:Ljava/net/URL;
    .restart local v7       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_1
    :try_start_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Network adminstration error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 137
    :sswitch_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    #getter for: Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/AggregationRunnable;->access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Access gateway internal error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 145
    :cond_2
    iget-object v8, p0, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->this$0:Landroid/net/wifi/AggregationRunnable;

    iget-object v8, v8, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "ACTION_AGGREGATION_DELAY"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x69 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method
