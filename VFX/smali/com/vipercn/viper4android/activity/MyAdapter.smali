.class Lcom/vipercn/viper4android/activity/MyAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "ViPER4Android.java"


# instance fields
.field private final entries:[Ljava/lang/String;

.field private parentContext:Landroid/content/Context;

.field private final tmpEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Landroid/content/Context;)V
    .locals 2
    .parameter "fm"
    .parameter "context"

    .prologue
    .line 1300
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 1296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->parentContext:Landroid/content/Context;

    .line 1302
    iput-object p2, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->parentContext:Landroid/content/Context;

    .line 1304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    .line 1305
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "headset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "speaker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->tmpEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->entries:[Ljava/lang/String;

    .line 1310
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->entries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 1326
    new-instance v1, Lcom/vipercn/viper4android/activity/MainDSPScreen;

    invoke-direct {v1}, Lcom/vipercn/viper4android/activity/MainDSPScreen;-><init>()V

    .line 1327
    .local v1, dspFragment:Lcom/vipercn/viper4android/activity/MainDSPScreen;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1328
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "config"

    iget-object v3, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->entries:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v1, v0}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->setArguments(Landroid/os/Bundle;)V

    .line 1330
    iget-object v2, p0, Lcom/vipercn/viper4android/activity/MyAdapter;->parentContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/vipercn/viper4android/activity/MainDSPScreen;->setParentContext(Landroid/content/Context;)V

    .line 1331
    return-object v1
.end method
