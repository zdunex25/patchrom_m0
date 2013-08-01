.class public final Lcom/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Ljava/util/List;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Z

.field private static f:Lcom/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/a/a/a;->f:Lcom/a/a/c/a;

    sput-boolean v1, Lcom/a/a/a;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/a/a/a;->b:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/a/a/a;->c:Ljava/lang/String;

    sput v1, Lcom/a/a/a;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/a;->e:Z

    return-void
.end method

.method public static a(Z)Lcom/a/a/b/c;
    .locals 1

    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/a/a/a;->a(ZI)Lcom/a/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZI)Lcom/a/a/b/c;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/a/a/a;->a(ZII)Lcom/a/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZII)Lcom/a/a/b/c;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/a/a/b/c;->a(I)Lcom/a/a/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/a/a/b/c;->b(I)Lcom/a/a/b/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-static {v1, p0, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/a/a/a;->a:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const-string p0, "RootTools v2.6"

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
