.class public Lcom/android/camera/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/android/camera/PreferenceInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/PreferenceInflater;->PACKAGE_NAME:Ljava/lang/String;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/PreferenceInflater;->CTOR_SIGNATURE:[Ljava/lang/Class;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/PreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/camera/CameraPreference;
    .locals 11
    .parameter "parser"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 77
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 78
    .local v1, attrs:Landroid/util/AttributeSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/CameraPreference;>;"
    new-array v0, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v7, v0, v9

    aput-object v1, v0, v8

    .line 82
    .local v0, args:[Ljava/lang/Object;
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 83
    .local v6, type:I
    :goto_0
    if-eq v6, v8, :cond_3

    .line 84
    if-eq v6, v10, :cond_1

    .line 83
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/android/camera/PreferenceInflater;->newPreference(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/camera/CameraPreference;

    move-result-object v5

    .line 87
    .local v5, pref:Lcom/android/camera/CameraPreference;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 88
    .local v2, depth:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v2, v7, :cond_2

    .line 89
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_2
    if-le v2, v8, :cond_0

    .line 94
    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v7, v5}, Lcom/android/camera/PreferenceGroup;->addChild(Lcom/android/camera/CameraPreference;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 102
    .end local v2           #depth:I
    .end local v5           #pref:Lcom/android/camera/CameraPreference;
    .end local v6           #type:I
    :catch_0
    move-exception v3

    .line 103
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Landroid/view/InflateException;

    invoke-direct {v7, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 91
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2       #depth:I
    .restart local v5       #pref:Lcom/android/camera/CameraPreference;
    .restart local v6       #type:I
    :cond_2
    add-int/lit8 v7, v2, -0x1

    :try_start_1
    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 104
    .end local v2           #depth:I
    .end local v5           #pref:Lcom/android/camera/CameraPreference;
    .end local v6           #type:I
    :catch_1
    move-exception v3

    .line 105
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Landroid/view/InflateException;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 98
    .end local v3           #e:Ljava/io/IOException;
    .restart local v6       #type:I
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 99
    new-instance v7, Landroid/view/InflateException;

    const-string v8, "No root element found"

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 101
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/CameraPreference;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v7
.end method

.method private newPreference(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/camera/CameraPreference;
    .locals 7
    .parameter "tagName"
    .parameter "args"

    .prologue
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/PreferenceInflater;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, name:Ljava/lang/String;
    sget-object v4, Lcom/android/camera/PreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 58
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_0

    .line 61
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v4, Lcom/android/camera/PreferenceInflater;->CTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 63
    sget-object v4, Lcom/android/camera/PreferenceInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraPreference;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-object v4

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, e:Ljava/lang/NoSuchMethodException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 68
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 69
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 70
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v2

    .line 71
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "While create instance of"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public inflate(I)Lcom/android/camera/CameraPreference;
    .locals 1
    .parameter "resId"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/camera/CameraPreference;

    move-result-object v0

    return-object v0
.end method
