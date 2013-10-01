.class Lcom/golgorz/hoveringcontrols/ah;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/golgorz/hoveringcontrols/MyService;


# direct methods
.method constructor <init>(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->a(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vlc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "winamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mxtech.videoplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v0}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxmpz.audioplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v1}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->b(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-virtual {v1}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    invoke-static {v3}, Lcom/golgorz/hoveringcontrols/MyService;->k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/ah;->a:Lcom/golgorz/hoveringcontrols/MyService;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/golgorz/hoveringcontrols/MyService;->c(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V

    goto :goto_0
.end method
