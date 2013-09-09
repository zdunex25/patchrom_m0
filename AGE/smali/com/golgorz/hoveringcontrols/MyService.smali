.class public Lcom/golgorz/hoveringcontrols/MyService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static c:I


# instance fields
.field private A:Landroid/hardware/Sensor;

.field private B:Ljava/util/ArrayList;

.field private C:Ljava/util/ArrayList;

.field private D:Z

.field private E:Z

.field private F:Landroid/telephony/TelephonyManager;

.field private G:S

.field private H:B

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Landroid/content/BroadcastReceiver;

.field private M:Landroid/os/Handler;

.field private N:Landroid/media/AudioManager;

.field private O:I

.field private P:I

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/util/ArrayList;

.field private T:Landroid/os/Handler;

.field private U:Landroid/content/SharedPreferences;

.field private V:Landroid/os/PowerManager$WakeLock;

.field private W:Z

.field private X:Landroid/os/Vibrator;

.field private Y:Z

.field private Z:Landroid/content/BroadcastReceiver;

.field a:Landroid/app/admin/DevicePolicyManager;

.field private aa:Ljava/lang/Runnable;

.field private ab:Ljava/lang/Runnable;

.field private ac:Landroid/os/Handler;

.field private ad:Ljava/lang/Runnable;

.field private ae:Landroid/content/BroadcastReceiver;

.field b:Landroid/content/ComponentName;

.field private d:F

.field private e:F

.field private f:F

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:I

.field private n:I

.field private o:B

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:J

.field private y:Landroid/hardware/SensorManager;

.field private z:Landroid/hardware/Sensor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v0, -0x4080

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:F

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:F

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->f:F

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:Ljava/util/List;

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->s:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Z

    iput-short v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:S

    iput-byte v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:B

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->M:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    new-instance v0, Lcom/golgorz/hoveringcontrols/x;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/x;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    new-instance v0, Lcom/golgorz/hoveringcontrols/aa;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/aa;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ab:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    new-instance v0, Lcom/golgorz/hoveringcontrols/ab;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/ab;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ad:Ljava/lang/Runnable;

    new-instance v0, Lcom/golgorz/hoveringcontrols/ac;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/ac;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ae:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->n()V

    return-void
.end method

.method static synthetic B(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->c()V

    return-void
.end method

.method static synthetic C(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->e()V

    return-void
.end method

.method static synthetic D(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic E(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic F(Lcom/golgorz/hoveringcontrols/MyService;)S
    .locals 1

    iget-short v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:S

    return v0
.end method

.method static synthetic G(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic H(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->j()V

    return-void
.end method

.method static synthetic I(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->i()V

    return-void
.end method

.method static synthetic J(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Z

    return v0
.end method

.method static synthetic K(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Z

    return v0
.end method

.method static synthetic L(Lcom/golgorz/hoveringcontrols/MyService;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:I

    return v0
.end method

.method static synthetic M(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic N(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->k()V

    return-void
.end method

.method static synthetic O(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->l()V

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    return v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHAKED---------------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:B

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Z

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

    new-instance v1, Lcom/golgorz/hoveringcontrols/ad;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ad;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

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

    new-instance v1, Lcom/golgorz/hoveringcontrols/ae;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ae;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;B)V
    .locals 0

    iput-byte p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:B

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/golgorz/hoveringcontrols/MyService;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;S)V
    .locals 0

    iput-short p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:S

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->D:Z

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

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "hidenotificon"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02000a

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

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

    invoke-virtual {v0, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "hidenotificon"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02000b

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

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

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

    iget-byte v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:B

    if-ne v0, v5, :cond_0

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/a/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 5"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "llamada aceptada"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->r()V
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

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    add-int/lit8 v1, v1, -0x32

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

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

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Lcom/a/a/b/b;

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

    invoke-direct {v1, v2, v3}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/a/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 22"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V
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

    iput p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Z

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:Z

    return v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "quickGlance"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

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

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->V:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/af;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/af;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    const-wide/16 v2, 0xfa0

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

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    div-int/lit8 v1, v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    int-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance v1, Lcom/a/a/b/b;

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

    invoke-direct {v1, v2, v3}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/a/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 21"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V
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

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->s:Z

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

    new-instance v1, Lcom/golgorz/hoveringcontrols/ag;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ag;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/MyService;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->O:I

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:Z

    return v0
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/media/AudioManager;

    return-object v0
.end method

.method private e()V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "emulateslidedown"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/b;

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

    invoke-direct {v1, v2, v3}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    return-void
.end method

.method private f()V
    .locals 7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "emulateslideup"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/a/a/b/b;

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

    invoke-direct {v1, v2, v3}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    return-void
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->K:Z

    return v0
.end method

.method static synthetic g(Lcom/golgorz/hoveringcontrols/MyService;)B
    .locals 1

    iget-byte v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    return v0
.end method

.method private g()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/a/a/b/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "input keyevent 27"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/b;-><init>(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/a/a/a;->a(Z)Lcom/a/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/b/c;->a(Lcom/a/a/b/a;)Lcom/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/a;->b()V
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

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->W:Z

    return-void
.end method

.method static synthetic h(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->M:Landroid/os/Handler;

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

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "vlc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "spotify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "winamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "mxtech.videoplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "maxmpz.audioplayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v2, "musicControls"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_1
    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "pauseCamera"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_2
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

    if-nez v3, :cond_5

    const-string v3, "empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x7000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v2, "vibrate"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

    const/4 v2, 0x4

    new-array v2, v2, [J

    aput-wide v6, v2, v12

    const-wide/16 v3, 0x4b

    aput-wide v3, v2, v8

    const/4 v3, 0x3

    aput-wide v6, v2, v3

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_3
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

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, "empty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_7

    const/high16 v2, 0x7000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v2, "vibrate"

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

    const/4 v2, 0x4

    new-array v2, v2, [J

    aput-wide v6, v2, v12

    const-wide/16 v3, 0x4b

    aput-wide v3, v2, v8

    const/4 v3, 0x3

    aput-wide v6, v2, v3

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_6
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

    goto :goto_0

    :cond_7
    const-string v0, "GolgorzPreviousAPP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->n()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->a(I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(I)V

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v2, "vibrate"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Could not open previous app"

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_9
    const-string v0, "empty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_2
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    :goto_3
    :try_start_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

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

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

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

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "pkinfo error"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v9

    goto :goto_3

    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "twice active is empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "target"

    invoke-virtual {p0, v0, v11}, Lcom/golgorz/hoveringcontrols/MyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "spotify"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v3, "musicControls"

    invoke-interface {v0, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.spotify.mobile.android.ui.widget.PREVIOUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "spotify previous??"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "videoplayer"

    const-string v4, "empty"

    invoke-interface {v8, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_4
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v9, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x58

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v5, "videoplayeractivity"

    const-string v6, "empty"

    invoke-interface {v8, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v9, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x58

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v2, "videoplayeractivity"

    const-string v3, "empty"

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PAUSADO VIDEO PLAYER"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "PAUSADO VIDEO PLAYER ERROR"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "music"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "vlc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "winamp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "mxtech.videoplayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "maxmpz.audioplayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_e
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v3, "musicControls"

    invoke-interface {v0, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "youtube"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_5
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
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

    goto/16 :goto_0

    :cond_f
    :try_start_6
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v8, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x58

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v8, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x58

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v8, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/golgorz/hoveringcontrols/MyService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :cond_10
    move-object v0, v9

    goto/16 :goto_1
.end method

.method static synthetic h(Lcom/golgorz/hoveringcontrols/MyService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Y:Z

    return-void
.end method

.method static synthetic i(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ab:Ljava/lang/Runnable;

    return-object v0
.end method

.method private i()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DESREGISTRAR ALTAVOZ"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

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

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/MyService;->J:Z

    return-void
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

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

.method static synthetic j(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    return v0
.end method

.method static synthetic k(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/golgorz/hoveringcontrols/MyService;)B
    .locals 1

    iget-byte v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->H:B

    return v0
.end method

.method private l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

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

.method static synthetic m(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

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

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->B:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->C:Ljava/util/ArrayList;

    goto :goto_0
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

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:Ljava/util/ArrayList;

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

    new-instance v0, Lcom/golgorz/hoveringcontrols/ai;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/golgorz/hoveringcontrols/ai;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v12, v0, Lcom/golgorz/hoveringcontrols/ai;->d:Landroid/content/Intent;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:Ljava/util/ArrayList;

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

.method static synthetic n(Lcom/golgorz/hoveringcontrols/MyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->E:Z

    return v0
.end method

.method static synthetic o(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ac:Landroid/os/Handler;

    return-object v0
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

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->k:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic p(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->ad:Ljava/lang/Runnable;

    return-object v0
.end method

.method private p()V
    .locals 5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----listmusics---"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

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

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MPLAYER:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 5

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getPackageManager()Landroid/content/pm/PackageManager;

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

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "camera: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic q(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->d()V

    return-void
.end method

.method static synthetic r(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->k:Ljava/util/List;

    return-object v0
.end method

.method private r()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/z;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/z;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic s(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->f()V

    return-void
.end method

.method static synthetic t(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->h()V

    return-void
.end method

.method static synthetic u(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->b()V

    return-void
.end method

.method static synthetic v(Lcom/golgorz/hoveringcontrols/MyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->g()V

    return-void
.end method

.method static synthetic w(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/golgorz/hoveringcontrols/MyService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic z(Lcom/golgorz/hoveringcontrols/MyService;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "selected card"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/golgorz/hoveringcontrols/ai;

    iget-object v1, v0, Lcom/golgorz/hoveringcontrols/ai;->d:Landroid/content/Intent;

    const/high16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Opening Previous App"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v0, v0, Lcom/golgorz/hoveringcontrols/ai;->d:Landroid/content/Intent;

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

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "pauseLandscape"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "pauseOnlyHold"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-byte v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iput-byte v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    goto :goto_0

    :cond_1
    iput-byte v4, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ONCREATEDDD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->p()V

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

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/golgorz/hoveringcontrols/DeviceAdminSample;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->b:Landroid/content/ComponentName;

    new-instance v1, Lcom/golgorz/hoveringcontrols/ah;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ah;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

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

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

    new-instance v0, Lcom/golgorz/hoveringcontrols/y;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/y;-><init>(Lcom/golgorz/hoveringcontrols/MyService;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Landroid/content/BroadcastReceiver;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->a:Landroid/app/admin/DevicePolicyManager;

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

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/golgorz/hoveringcontrols/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->N:Landroid/media/AudioManager;

    :try_start_b
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->m()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/golgorz/hoveringcontrols/aj;

    invoke-direct {v1, p0, v4}, Lcom/golgorz/hoveringcontrols/aj;-><init>(Lcom/golgorz/hoveringcontrols/MyService;Lcom/golgorz/hoveringcontrols/aj;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->F:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/golgorz/hoveringcontrols/aj;

    invoke-direct {v1, p0, v4}, Lcom/golgorz/hoveringcontrols/aj;-><init>(Lcom/golgorz/hoveringcontrols/MyService;Lcom/golgorz/hoveringcontrols/aj;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "hidenotificon"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f02000a

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
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->X:Landroid/os/Vibrator;

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

    iput v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->m:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->n:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :goto_e
    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/MyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "pauseLandscape"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "pauseOnlyHold"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-byte v6, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    :goto_f
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "holdduration"

    const/16 v2, 0x5dc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:I

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
    iput-byte v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    goto/16 :goto_f

    :cond_3
    iput-byte v7, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    goto/16 :goto_f
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->A:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->L:Landroid/content/BroadcastReceiver;

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
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->Z:Landroid/content/BroadcastReceiver;

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

    const-wide/16 v7, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_4

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

    sput v2, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->j:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:I

    :cond_0
    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->g:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->g:J

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

    iget v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/MyService;->f:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    sget v3, Lcom/golgorz/hoveringcontrols/MyService;->c:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->i:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v7

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->i:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->h:I

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->a()V

    :cond_1
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->j:J

    :cond_2
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->g:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->d:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->e:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->f:F

    :cond_3
    :goto_0
    return-void

    :cond_4
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

    iput-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->Q:Ljava/lang/String;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->R:Ljava/lang/String;

    iget-byte v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->o:B

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alter detection-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->s:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->P:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->s:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->w:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->x:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    :cond_6
    :goto_3
    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->u:I

    if-lt v0, v4, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->t:Z

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->T:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->aa:Ljava/lang/Runnable;

    iget v2, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->y:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/MyService;->z:Landroid/hardware/Sensor;

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
    iput-short v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->G:S

    :goto_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v3, "waveduration"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v1, "delaytime"

    const/16 v3, 0x1f4

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/golgorz/hoveringcontrols/MyService;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->p:I

    :try_start_3
    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/MyService;->o()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
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

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_6
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->U:Landroid/content/SharedPreferences;

    const-string v3, "hidenotificon"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:Z

    if-eqz v0, :cond_3

    const-string v0, "Hovering Controls Running"

    invoke-direct {p0, v0, v2}, Lcom/golgorz/hoveringcontrols/MyService;->a(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3
    const-string v0, "Hovering Controls Paused"

    invoke-direct {p0, v0, v1}, Lcom/golgorz/hoveringcontrols/MyService;->a(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/MyService;->I:Z

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

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
