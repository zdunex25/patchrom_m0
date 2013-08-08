.class Lcom/golgorz/hoveringcontrols/ae;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method private constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;Lcom/golgorz/hoveringcontrols/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/ae;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, v4, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    invoke-static {v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->e(Lcom/golgorz/hoveringcontrols/MyService;I)V

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "shakeAltavoz"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->D(Lcom/golgorz/hoveringcontrols/MyService;)V

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->F(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ALTAVOZ DESCTIVADO EN LISTENER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v3}, Lcom/golgorz/hoveringcontrols/MyService;->g(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    :cond_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->G(Lcom/golgorz/hoveringcontrols/MyService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->H(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, p1}, Lcom/golgorz/hoveringcontrols/MyService;->f(Lcom/golgorz/hoveringcontrols/MyService;I)V

    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0, v3}, Lcom/golgorz/hoveringcontrols/MyService;->h(Lcom/golgorz/hoveringcontrols/MyService;Z)V

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PHONE STATE="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v2}, Lcom/golgorz/hoveringcontrols/MyService;->j(Lcom/golgorz/hoveringcontrols/MyService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ae;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->E(Lcom/golgorz/hoveringcontrols/MyService;)V

    goto :goto_0
.end method
