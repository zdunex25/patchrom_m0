.class public Lcom/golgorz/hoveringcontrols/SensorTest;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static u:I


# instance fields
.field private A:J

.field private B:J

.field private C:Landroid/widget/TextView;

.field private D:Landroid/content/SharedPreferences;

.field private E:I

.field private F:Landroid/os/Handler;

.field private G:Ljava/lang/Runnable;

.field a:Landroid/widget/SeekBar;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:J

.field private j:J

.field private k:Landroid/os/Handler;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Landroid/content/SharedPreferences;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/EditText;

.field private v:F

.field private w:F

.field private x:F

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/golgorz/hoveringcontrols/SensorTest;->u:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->k:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    iput-boolean v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    iput v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:Ljava/lang/String;

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:F

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:F

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:F

    iput v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:Landroid/os/Handler;

    new-instance v0, Lcom/golgorz/hoveringcontrols/an;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/an;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    return v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->f:Landroid/widget/TextView;

    const-string v1, "YOU SHAKED!!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/ao;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ao;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/golgorz/hoveringcontrols/SensorTest;->u:I

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Z

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/SensorTest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    return-void
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/SensorTest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/SensorTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic i(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->C:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x5dc

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->setContentView(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/SensorTest;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->stopService(Landroid/content/Intent;)Z

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->d:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->f:Landroid/widget/TextView;

    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->h:Landroid/widget/ImageView;

    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->a:Landroid/widget/SeekBar;

    const-string v0, "shakeSense"

    invoke-virtual {p0, v0, v3}, Lcom/golgorz/hoveringcontrols/SensorTest;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:Landroid/content/SharedPreferences;

    const-string v1, "sensibility"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->E:I

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->C:Landroid/widget/TextView;

    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Landroid/widget/EditText;

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:Landroid/widget/EditText;

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Landroid/widget/EditText;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    const-string v2, "delaytime"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    const-string v2, "waveduration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    const-string v2, "holdduration"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->C:Landroid/widget/TextView;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->E:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->a:Landroid/widget/SeekBar;

    new-instance v1, Lcom/golgorz/hoveringcontrols/ap;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/ap;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->d:Landroid/hardware/Sensor;

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

.method protected onPause()V
    .locals 5

    const/16 v4, 0x5dc

    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "delaytime"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "waveduration"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "holdduration"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/golgorz/hoveringcontrols/SensorTest;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/golgorz/hoveringcontrols/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->stopService(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "delaytime"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "waveduration"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "holdduration"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->B:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:I

    :cond_0
    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->y:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->y:J

    sub-long v2, v0, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    sget v3, Lcom/golgorz/hoveringcontrols/SensorTest;->u:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->A:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->A:J

    iput v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:I

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/SensorTest;->a()V

    :cond_1
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->B:J

    :cond_2
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->y:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:F

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROX SENSOR:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->g:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v0, v1

    :goto_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sensor IN-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    iget-wide v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iput-wide v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->j:J

    :try_start_2
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:Landroid/os/Handler;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-boolean v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sensor OUT-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_3
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:Landroid/os/Handler;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    iput-boolean v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->j:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_8

    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    :cond_6
    :goto_6
    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    if-ne v1, v8, :cond_9

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->g:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    const/16 v0, 0x5dc

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_8
    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:I

    if-lt v1, v7, :cond_6

    iput-boolean v7, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:Landroid/os/Handler;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
