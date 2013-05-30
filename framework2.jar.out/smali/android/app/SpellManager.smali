.class public Landroid/app/SpellManager;
.super Ljava/lang/Object;
.source "SpellManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final INTENT_ACTION_SPELLSCROLL_CHANGED:Ljava/lang/String; = "android.spell.action.SPELLSCROLL_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SpellManager"

.field private static mService:Landroid/app/ISpellManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Landroid/app/SpellManager;->mHandler:Landroid/os/Handler;

    .line 71
    const-string v0, "spell"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISpellManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISpellManager;

    move-result-object v0

    sput-object v0, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    .line 73
    return-void
.end method


# virtual methods
.method public cast(JLandroid/os/Bundle;)Z
    .locals 6
    .parameter "spellId"
    .parameter "userInput"

    .prologue
    const/4 v2, 0x0

    .line 275
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v1

    .line 277
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v3

    if-nez v3, :cond_1

    .line 286
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return v2

    .line 281
    .restart local v1       #info:Landroid/app/SpellScroll;
    :cond_1
    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p3}, Landroid/app/SpellScroll$Spell;->cast(Landroid/content/Context;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 282
    .end local v1           #info:Landroid/app/SpellScroll;
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cast() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "spellScrollName"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 172
    if-nez p2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v3

    .line 177
    :cond_1
    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 179
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    .line 180
    iget-object v4, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/app/SpellScroll;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 182
    .local v2, pacakageContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 185
    .end local v1           #info:Landroid/app/SpellScroll;
    .end local v2           #pacakageContext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitmap() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInformationHash()I
    .locals 4

    .prologue
    .line 291
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1}, Landroid/app/ISpellManager;->getInformationHash()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 296
    :goto_0
    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInformationHash() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstantSpell(Ljava/lang/String;)J
    .locals 7
    .parameter "spellText"

    .prologue
    const-wide/16 v2, 0x0

    .line 243
    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1}, Landroid/app/ISpellManager;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 245
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SpellScroll$Spell;->getId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 250
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-wide v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstantSpell() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"

    .prologue
    .line 108
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShallowSpellScroll() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpell(J)Landroid/app/SpellScroll$Spell;
    .locals 6
    .parameter "spellId"

    .prologue
    const/4 v2, 0x0

    .line 216
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v1

    .line 218
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpell() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpell(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    .locals 6
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    const/4 v2, 0x0

    .line 229
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 231
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 236
    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpell() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpellName(J)Ljava/lang/String;
    .locals 4
    .parameter "spellId"

    .prologue
    .line 265
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->getSpellNameById(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellNames() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"

    .prologue
    .line 118
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScroll() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollName(J)Ljava/lang/String;
    .locals 4
    .parameter "spellId"

    .prologue
    .line 255
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->getSpellScrollNameById(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrollName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1}, Landroid/app/ISpellManager;->getSpellScrollNames()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrolls() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNamesByPriority(I)Ljava/util/List;
    .locals 4
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellScrollNamesByPriority(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrollNamesByPriority() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpells(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Spell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 130
    .local v1, scroll:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    .end local v1           #scroll:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShallowSpellScroll() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "spellScrollName"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 193
    if-nez p2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v3

    .line 198
    :cond_1
    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 200
    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    .line 201
    iget-object v4, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/app/SpellScroll;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 203
    .local v2, pacakageContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 206
    .end local v1           #info:Landroid/app/SpellScroll;
    .end local v2           #pacakageContext:Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getString() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValidSpell(J)Z
    .locals 7
    .parameter "spellId"

    .prologue
    const/4 v3, 0x0

    .line 140
    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1, p2}, Landroid/app/ISpellManager;->getSpellScrollNameById(J)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, spellScrollName:Ljava/lang/String;
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1, p2}, Landroid/app/ISpellManager;->getSpellNameById(J)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, spellName:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/app/SpellManager;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 148
    .end local v1           #spellName:Ljava/lang/String;
    .end local v2           #spellScrollName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidSpell() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    .line 153
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSpell() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidSpellScroll(Ljava/lang/String;)Z
    .locals 4
    .parameter "spellScrollName"

    .prologue
    .line 78
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->isValidSpellScroll(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrolls() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method
