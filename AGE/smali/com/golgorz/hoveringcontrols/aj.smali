.class Lcom/golgorz/hoveringcontrols/aj;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method private constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;Lcom/golgorz/hoveringcontrols/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/aj;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, v4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->d(Lcom/golgorz/hoveringcontrols/MyService;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->m(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shakeAltavoz"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->H(Lcom/golgorz/hoveringcontrols/MyService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->J(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ALTAVOZ DESCTIVADO EN LISTENER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->g(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->K(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->L(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    int-to-byte v1, p1

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;B)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/aj;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->I(Lcom/golgorz/hoveringcontrols/MyService;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
