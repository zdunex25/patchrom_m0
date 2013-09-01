.class public Lcom/golgorz/hoveringcontrols/SensorTest;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static y:I


# instance fields
.field private A:F

.field private B:F

.field private C:J

.field private D:I

.field private E:J

.field private F:J

.field private G:Landroid/widget/TextView;

.field private H:Landroid/content/SharedPreferences;

.field private I:I

.field private J:Ljava/lang/Runnable;

.field private K:Landroid/os/Handler;

.field private L:Ljava/lang/Runnable;

.field private M:Landroid/os/Handler;

.field private N:Ljava/lang/Runnable;

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

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Landroid/widget/CheckBox;

.field private v:Landroid/content/SharedPreferences;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/EditText;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/golgorz/hoveringcontrols/SensorTest;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v3, -0x4080

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->k:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:J

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Z

    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Z

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Ljava/lang/String;

    iput v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:F

    iput v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->A:F

    iput v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->B:F

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:I

    new-instance v0, Lcom/golgorz/hoveringcontrols/aj;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/aj;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->J:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->K:Landroid/os/Handler;

    new-instance v0, Lcom/golgorz/hoveringcontrols/ak;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/ak;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->L:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->M:Landroid/os/Handler;

    new-instance v0, Lcom/golgorz/hoveringcontrols/al;

    invoke-direct {v0, p0}, Lcom/golgorz/hoveringcontrols/al;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->N:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->f:Landroid/widget/TextView;

    const-string v1, "YOU SHAKED!!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/golgorz/hoveringcontrols/am;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/am;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/golgorz/hoveringcontrols/SensorTest;->y:I

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;I)V
    .locals 0

    iput p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    return-void
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Z

    return-void
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/SensorTest;)I
    .locals 1

    iget v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    return v0
.end method

.method static synthetic c(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/SensorTest;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:Z

    return-void
.end method

.method static synthetic d(Lcom/golgorz/hoveringcontrols/SensorTest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/golgorz/hoveringcontrols/SensorTest;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/golgorz/hoveringcontrols/SensorTest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->H:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic i(Lcom/golgorz/hoveringcontrols/SensorTest;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public alternative(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Z

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensorDetector"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Z

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensorDetector"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

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

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->d:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->d:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

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

    invoke-virtual {p0, v0, v4}, Lcom/golgorz/hoveringcontrols/SensorTest;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->H:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->H:Landroid/content/SharedPreferences;

    const-string v1, "sensibility"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->I:I

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->I:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Landroid/widget/TextView;

    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/golgorz/hoveringcontrols/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->u:Landroid/widget/CheckBox;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    const-string v1, "sensorDetector"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Z

    :goto_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    const-string v2, "delaytime"

    const/16 v3, 0x5dc

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    const-string v2, "waveduration"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->G:Landroid/widget/TextView;

    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->I:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->a:Landroid/widget/SeekBar;

    new-instance v1, Lcom/golgorz/hoveringcontrols/an;

    invoke-direct {v1, p0}, Lcom/golgorz/hoveringcontrols/an;-><init>(Lcom/golgorz/hoveringcontrols/SensorTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    iput-boolean v4, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Z

    goto :goto_0
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
    .locals 4

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
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "delaytime"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

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
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "waveduration"

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

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

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "delaytime"

    const/16 v3, 0x5dc

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->v:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "waveduration"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const-wide/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:I

    :cond_0
    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->C:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->C:J

    sub-long v2, v0, v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->A:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->B:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v2, v2

    div-float v2, v4, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    sget v3, Lcom/golgorz/hoveringcontrols/SensorTest;->y:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->E:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_1

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->E:J

    iput v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->D:I

    invoke-direct {p0}, Lcom/golgorz/hoveringcontrols/SensorTest;->a()V

    :cond_1
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->F:J

    :cond_2
    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->C:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->z:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->A:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v8

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->B:F

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->l:Landroid/os/Handler;

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
    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->r:Z

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    :try_start_1
    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

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
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SENSOR DELAY:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iput-boolean v7, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "FIRST IFF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iput-wide v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->j:J

    :try_start_2
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->M:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    iget v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    if-lt v1, v8, :cond_8

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event hovercounts:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->q:Z

    if-eqz v0, :cond_3

    iput-boolean v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->n:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->j:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->x:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    :cond_6
    :goto_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SECOND IFF"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    :cond_8
    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->M:Landroid/os/Handler;

    iget-object v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->N:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :cond_9
    iget v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->s:I

    if-lt v0, v7, :cond_6

    iput-boolean v7, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->o:Z

    goto :goto_6

    :cond_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proximity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    iget-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iget-wide v2, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->K:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v6, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:J

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->e:Landroid/widget/TextView;

    const-string v1, "Slide Twice"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->h:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_b
    :goto_7
    iget-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->j:J

    goto/16 :goto_0

    :cond_c
    iput-boolean v7, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->m:Z

    iget-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->i:J

    iput-wide v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->p:J

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->K:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->K:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->c:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->k:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/golgorz/hoveringcontrols/SensorTest;->J:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7
.end method
