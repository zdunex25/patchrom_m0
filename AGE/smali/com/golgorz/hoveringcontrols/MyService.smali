.class public Lcom/golgorz/hoveringcontrols/MyService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static g:I


# instance fields
.field private A:Landroid/hardware/Sensor;

.field private B:Landroid/hardware/Sensor;

.field private C:F

.field private D:Ljava/util/ArrayList;

.field private E:Ljava/util/ArrayList;

.field private F:Z

.field private G:Z

.field private H:Landroid/telephony/TelephonyManager;

.field private I:I

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Landroid/content/BroadcastReceiver;

.field private O:Landroid/os/Handler;

.field private P:Landroid/media/AudioManager;

.field private Q:I

.field private R:Z

.field private S:J

.field private T:Ljava/lang/String;

.field private U:Ljava/util/ArrayList;

.field private V:Landroid/os/Handler;

.field private W:Landroid/content/SharedPreferences;

.field private X:Landroid/os/PowerManager$WakeLock;

.field private Y:Z

.field private Z:Z

.field a:Z

.field private aa:Ljava/lang/Runnable;

.field private ab:Ljava/lang/Runnable;

.field private ac:Landroid/os/Handler;

.field private ad:Ljava/lang/Runnable;

.field private ae:Landroid/content/BroadcastReceiver;

.field b:I

.field c:I

.field d:B

.field e:Landroid/os/Vibrator;

.field f:Landroid/content/BroadcastReceiver;

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:I

.field private m:J

.field private n:J

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:J

.field private y:J

.field private z:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/golgorz/hoveringcontrols/MyService;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/high16 v0, -0x4080

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->a:Z

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:F

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->i:F

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->j:F

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:Ljava/util/List;

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:Z

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:Z

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:I

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->M:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Z

    new-instance v0, Lcom/golgorz/hoveringcontrols/s;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/s;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    new-instance v0, Lcom/golgorz/hoveringcontrols/v;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/v;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ab:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    new-instance v0, Lcom/golgorz/hoveringcontrols/w;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/w;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ad:Ljava/lang/Runnable;

    new-instance v0, Lcom/golgorz/hoveringcontrols/x;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/x;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ae:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic B(Lcom/golgorz/hoveringcontrols/MyService;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:I

    return v0
.end method

.method static synthetic C(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic D(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->j()V

    return-void
.end method

.method static synthetic E(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->i()V

    return-void
.end method

.method static synthetic F(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    return v0
.end method

.method static synthetic G(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Z

    return v0
.end method

.method static synthetic H(Lcom/golgorz/hoveringcontrols/MyService;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:I

    return v0
.end method

.method static synthetic I(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic J(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->k()V

    return-void
.end method

.method static synthetic K(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->l()V

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    return v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHAKED---------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Altavoz FALSE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/y;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/y;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Speaker OFF"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Altavoz TRUE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Speaker ON"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/z;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/z;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/MyService;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Z

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 10

    const-wide/16 v8, 0x190

    const/high16 v7, 0x1400

    const/16 v6, 0x539

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "hidenotificon"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020007

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "stopit"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "Hovering Controls"

    const-string v3, "Click here to stop Hovering Controls"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p0, v6, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    invoke-virtual {v0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "hidenotificon"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020008

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "stopit"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "Hovering Controls"

    const-string v3, "Click here to stop Hovering Controls"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p0, v6, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    invoke-virtual {v0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PHONEMANAGER:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    if-ne v0, v5, :cond_0

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Lcom/b/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 5"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "llamada aceptada"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    add-int/lit8 v1, v1, -0x32

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Lcom/b/a/b/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "input swipe "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/b/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 22"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:Z

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    return v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "quickGlance"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mostramos quickglance"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/golgorz/hoveringcontrols/QuickGlance;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x3481

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mostramos lockinfo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "Hovering Controls"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/aa;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/aa;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private c(I)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    div-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Lcom/b/a/b/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "input swipe "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/b/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 21"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/MyService;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:Z

    return-void
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    return v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/ab;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ab;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "desbloqueamos"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:I

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Z

    return v0
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:Landroid/media/AudioManager;

    return-object v0
.end method

.method private e()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "input swipe "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:I

    return-void
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->M:Z

    return-void
.end method

.method private f()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/b/a/b/b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "input swipe "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    return-void
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Z

    return-void
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->M:Z

    return v0
.end method

.method static synthetic g(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/b/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 27"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/b/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/b/a/a;->a(Z)Lcom/b/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/b/c;->a(Lcom/b/a/b/a;)Lcom/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    return-void
.end method

.method static synthetic h(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ab:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 13

    const/4 v8, 0x2

    const-wide/16 v6, 0x64

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "double tapped"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, ""

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "spotify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "musicControls"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.spotify.mobile.android.ui.widget.PREVIOUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "spotify previous??"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "vlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "spotify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "winamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "mxtech.videoplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v2, "maxmpz.audioplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "musicControls"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_5
    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Z

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:Ljava/util/List;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "pauseCamera"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "double tapped 1iff"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "target"

    invoke-virtual {p0, v0, v11}, Lcom/golgorz/hoveringcontrols/MyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "slidetwice"

    const-string v2, "empty"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "slidetwiceactivity"

    const-string v3, "empty"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "longpress:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x7000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "vibrate"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const/4 v2, 0x4

    new-array v2, v2, [J

    aput-wide v6, v2, v12

    const-wide/16 v3, 0x4b

    aput-wide v3, v2, v8

    const/4 v3, 0x3

    aput-wide v6, v2, v3

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_7
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "slidetwicename"

    const-string v4, "Not Set"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_8
    const-string v0, "empty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_a

    const/high16 v2, 0x7000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "vibrate"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const/4 v2, 0x4

    new-array v2, v2, [J

    aput-wide v6, v2, v12

    const-wide/16 v3, 0x4b

    aput-wide v3, v2, v8

    const/4 v3, 0x3

    aput-wide v6, v2, v3

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_9
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "slidetwicename"

    const-string v4, "Not Set"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_a
    const-string v0, "GolgorzPreviousAPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->n()V

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->a(I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/16 v3, 0x4b

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    aput-wide v3, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const/4 v1, 0x2

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(I)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "vibrate"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const/4 v2, 0x4

    new-array v2, v2, [J

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    const-wide/16 v4, 0x4b

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    const-wide/16 v4, 0x64

    aput-wide v4, v2, v3

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_b
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Could not open previous app"

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_c
    const-string v0, "empty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :try_start_5
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v9

    :goto_6
    :try_start_6
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x7000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    aput-wide v3, v1, v2

    const/4 v2, 0x2

    const-wide/16 v3, 0x4b

    aput-wide v3, v1, v2

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    aput-wide v3, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "pkinfo error"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_6

    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "twice active is empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "vlc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "winamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "mxtech.videoplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "maxmpz.audioplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_f
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "musicControls"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "youtube"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "double tapped 2iff"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :try_start_7
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v9

    :cond_10
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v0

    move-object v8, v0

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0x58

    move-wide v3, v1

    move v5, v11

    move v7, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v10, v9}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v10, v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0x58

    move-wide v3, v1

    move v5, v12

    move v7, v11

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v10, v9}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_11
    :try_start_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_10

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v8, v0

    goto :goto_7

    :cond_12
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x58

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    invoke-direct {v0, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x58

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    invoke-direct {v0, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    :cond_13
    move-object v0, v9

    goto/16 :goto_4
.end method

.method static synthetic h(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Z

    return-void
.end method

.method static synthetic i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DESREGISTRAR ALTAVOZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Z

    return-void
.end method

.method static synthetic j(Lcom/golgorz/hoveringcontrols/MyService;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    return v0
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:Z

    return v0
.end method

.method static synthetic m(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    const-string v1, "data"

    invoke-virtual {p0, v1, v3}, Lcom/golgorz/hoveringcontrols/MyService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "carousel"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "data"

    invoke-virtual {p0, v2, v3}, Lcom/golgorz/hoveringcontrols/MyService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "carouselname"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method static synthetic n(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ad:Ljava/lang/Runnable;

    return-object v0
.end method

.method private n()V
    .locals 14

    const/4 v13, 0x5

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v7, v6

    :goto_0
    if-ge v7, v11, :cond_0

    if-lt v6, v13, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v12, Landroid/content/Intent;

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2
    if-eqz v10, :cond_4

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x200001

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {v8, v12, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v8}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v0, -0x1

    if-eq v5, v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v2, :cond_3

    new-instance v0, Lcom/golgorz/hoveringcontrols/ad;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/golgorz/hoveringcontrols/ad;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v12, v0, Lcom/golgorz/hoveringcontrols/ad;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private o()V
    .locals 5

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "http://www.google.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "browser:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic o(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->d()V

    return-void
.end method

.method static synthetic p(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:Ljava/util/List;

    return-object v0
.end method

.method private p()V
    .locals 3

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private q()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/u;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/u;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic q(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->f()V

    return-void
.end method

.method static synthetic r(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->h()V

    return-void
.end method

.method static synthetic s(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->b()V

    return-void
.end method

.method static synthetic t(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->g()V

    return-void
.end method

.method static synthetic u(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic x(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->n()V

    return-void
.end method

.method static synthetic y(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->c()V

    return-void
.end method

.method static synthetic z(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->e()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "selected card"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/golgorz/hoveringcontrols/ad;

    iget-object v1, v0, Lcom/golgorz/hoveringcontrols/ad;->d:Landroid/content/Intent;

    const/high16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/golgorz/hoveringcontrols/ad;->d:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Opening Previous App"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/ad;->d:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Unable to launch recent task"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "selected card is empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "configration changed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "pauseLandscape"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "pauseOnlyHold"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-byte v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iput-byte v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    goto :goto_0

    :cond_1
    iput-byte v4, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ONCREATEDDD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/golgorz/hoveringcontrols/ac;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ac;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoCamera"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    new-instance v0, Lcom/golgorz/hoveringcontrols/t;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/t;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v0, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_1
    const-string v0, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v0, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string v0, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    const-string v0, "com.htc.android.worldclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string v0, "com.sonyericsson.alarm.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    const-string v0, "zte.com.cn.alarmclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    const-string v0, "com.motorola.blur.alarmclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    const-string v0, "com.urbandroid.sleep.alarmclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    const-string v0, "com.splunchy.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:Landroid/media/AudioManager;

    :try_start_b
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Landroid/hardware/Sensor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:F

    :try_start_c
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->m()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/golgorz/hoveringcontrols/ae;

    invoke-direct {v1, p0, v3}, Lcom/golgorz/hoveringcontrols/ae;-><init>(Lcom/golgorz/hoveringcontrols/MyService;Lcom/golgorz/hoveringcontrols/ae;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/golgorz/hoveringcontrols/ae;

    invoke-direct {v1, p0, v3}, Lcom/golgorz/hoveringcontrols/ae;-><init>(Lcom/golgorz/hoveringcontrols/MyService;Lcom/golgorz/hoveringcontrols/ae;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "hidenotificon"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020007

    const-string v2, "Hovering Controls Running"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/golgorz/hoveringcontrols/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "stopit"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "Hovering Controls"

    const-string v3, "Click here to stop Hovering Controls"

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    const/16 v1, 0x539

    invoke-virtual {p0, v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startForeground(ILandroid/app/Notification;)V

    :goto_d
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:Landroid/os/Vibrator;

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    :try_start_d
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->c:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :goto_e
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "pauseLandscape"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "pauseOnlyHold"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-byte v6, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    :goto_f
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :catch_b
    move-exception v0

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "YOU HAVE NO PROXIMITY SENSOR, SORRY"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->stopSelf()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :cond_1
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Hovering Control Started"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    :cond_2
    iput-byte v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    goto :goto_f

    :cond_3
    iput-byte v7, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    goto :goto_f
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DESTROYED"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const-wide/16 v7, 0x1f4

    const/4 v6, 0x2

    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "shakeSense"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/golgorz/hoveringcontrols/MyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sensibility"

    const/16 v4, 0x1f4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/golgorz/hoveringcontrols/MyService;->g:I

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:I

    :cond_0
    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->k:J

    sub-long v2, v0, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->i:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->j:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    sget v3, Lcom/golgorz/hoveringcontrols/MyService;->g:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:I

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->a()V

    :cond_1
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:J

    :cond_2
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->k:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->i:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->j:F

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ORIENTATION:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    if-eqz v1, :cond_7

    iget-byte v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-eqz v1, :cond_7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "one true"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    if-lt v0, v6, :cond_6

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    iget-byte v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11

    iget-wide v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J

    iget-wide v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-gtz v1, :cond_11

    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "silenceCall"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Z

    :cond_8
    :goto_3
    iget-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:J

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:I

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "silenceAlarm"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:Z

    goto :goto_3

    :cond_a
    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Z

    if-eqz v1, :cond_10

    iget-wide v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J

    iget-wide v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-gtz v1, :cond_10

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:J

    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "screenoffUnlock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "unlock?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->d()V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:Ljava/util/List;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v2, "autoBrowser"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->f()V

    goto/16 :goto_3

    :cond_c
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cameralauncher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "PicFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "fstop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "autoGallery"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Ljava/lang/String;

    const-string v1, "PicFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->c(I)V

    goto/16 :goto_3

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->c(I)V

    goto/16 :goto_3

    :cond_f
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->h()V

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Z

    iget-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:J

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->ad:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    :cond_11
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->M:Z

    if-eqz v0, :cond_8

    :cond_12
    iget-byte v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:B

    if-ne v0, v6, :cond_8

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->ab:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "long runable called in if"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    invoke-virtual {v0, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "carouselupdate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->m()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:I

    :goto_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v3, "sensorDetector"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    :goto_4
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v1, "delaytime"

    const/16 v3, 0x5dc

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:I

    :try_start_3
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->o()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_5
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    :try_start_4
    const-string v0, "WIDGET"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_7
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Landroid/content/SharedPreferences;

    const-string v3, "hidenotificon"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    if-eqz v0, :cond_3

    const-string v0, "Hovering Controls Running"

    invoke-direct {p0, v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->a(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_3
    const-string v0, "Hovering Controls Paused"

    invoke-direct {p0, v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "Hovering Controls Active"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "Hovering Controls Paused"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method