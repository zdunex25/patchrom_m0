.class public Lcom/android/updater/RomInfo;
.super Ljava/lang/Object;
.source "RomInfo.java"


# instance fields
.field public changelog:Ljava/lang/String;

.field public date:Ljava/util/Date;

.field public md5:Ljava/lang/String;

.field public romName:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "romName"
    .parameter "version"
    .parameter "changelog"
    .parameter "downurl"
    .parameter "md5"
    .parameter "date"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/updater/RomInfo;->romName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/android/updater/RomInfo;->changelog:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/android/updater/RomInfo;->url:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/android/updater/RomInfo;->md5:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/android/updater/RomInfo;->date:Ljava/util/Date;

    .line 38
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/android/updater/RomInfo;
    .locals 7
    .parameter "i"

    .prologue
    .line 41
    new-instance v0, Lcom/android/updater/RomInfo;

    .line 42
    const-string v1, "info_rom"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "info_version"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    const-string v3, "info_changelog"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v4, "info_url"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    const-string v5, "info_md5"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    const-string v6, "info_date"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/updater/Utils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 41
    invoke-direct/range {v0 .. v6}, Lcom/android/updater/RomInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public addToIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "i"

    .prologue
    .line 51
    const-string v0, "info_rom"

    iget-object v1, p0, Lcom/android/updater/RomInfo;->romName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "info_version"

    iget-object v1, p0, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v0, "info_changelog"

    iget-object v1, p0, Lcom/android/updater/RomInfo;->changelog:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v0, "info_url"

    iget-object v1, p0, Lcom/android/updater/RomInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v0, "info_md5"

    iget-object v1, p0, Lcom/android/updater/RomInfo;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v0, "info_date"

    iget-object v1, p0, Lcom/android/updater/RomInfo;->date:Ljava/util/Date;

    invoke-static {v1}, Lcom/android/updater/Utils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-void
.end method
