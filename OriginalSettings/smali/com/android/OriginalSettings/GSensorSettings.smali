.class public Lcom/android/OriginalSettings/GSensorSettings;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/GSensorSettings$1;,
        Lcom/android/OriginalSettings/GSensorSettings$setHandler;,
        Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;,
        Lcom/android/OriginalSettings/GSensorSettings$handlersensor;
    }
.end annotation


# static fields
.field private static BackgroundPaint:Landroid/graphics/Paint;

.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field static file:I

.field private static sampleCount:I


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBackgroundRadian:I

.field mHandler:Lcom/android/OriginalSettings/GSensorSettings$setHandler;

.field private mHorizontalLine:I

.field mSensorListner:Lcom/android/OriginalSettings/GSensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVerticalLine:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 71
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_X:I

    .line 72
    const/16 v0, 0x172

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_Y:I

    .line 73
    iput v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHorizontalLine:I

    .line 74
    iput v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->mVerticalLine:I

    .line 75
    iput v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->mBackgroundRadian:I

    .line 77
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->ICON_RADIUS:I

    .line 78
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CIRCLE_RADIUS:I

    .line 371
    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mVerticalLine:I

    return v0
.end method

.method static synthetic access$1100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/GSensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/GSensorSettings;)Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->drawView:Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/GSensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput p0, Lcom/android/OriginalSettings/GSensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/OriginalSettings/GSensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/OriginalSettings/GSensorSettings;->diplayError()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mBackgroundRadian:I

    return v0
.end method

.method static synthetic access$800()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHorizontalLine:I

    return v0
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    const v1, 0x7f090886

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 231
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    return-void
.end method

.method private diplayError()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    const v1, 0x7f090885

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 237
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    return-void
.end method

.method private getIconRadius()I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/GSensorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    .local v0, iconBall:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 124
    const v0, 0x7f0b00fc

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->text:Landroid/widget/TextView;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 129
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    .line 134
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    sget-object v0, Lcom/android/OriginalSettings/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    return-void
.end method


# virtual methods
.method public dpToPixel(I)F
    .locals 4
    .parameter "dp"

    .prologue
    .line 274
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 275
    .local v0, outMetris:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/GSensorSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 276
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 277
    .local v1, pixel:F
    return v1
.end method

.method public getLcdHeight()I
    .locals 3

    .prologue
    .line 247
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 248
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 249
    .local v1, height:I
    return v1
.end method

.method public getLcdWidth()I
    .locals 3

    .prologue
    .line 241
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/GSensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 242
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 243
    .local v1, width:I
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 174
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHandler:Lcom/android/OriginalSettings/GSensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/OriginalSettings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00fc
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x32

    .line 102
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/GSensorSettings;->getLcdWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_X:I

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/GSensorSettings;->getLcdHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/GSensorSettings;->dpToPixel(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_Y:I

    .line 106
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHorizontalLine:I

    .line 107
    iget v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CENTER_Y:I

    mul-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mVerticalLine:I

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/GSensorSettings;->dpToPixel(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mBackgroundRadian:I

    .line 109
    invoke-direct {p0}, Lcom/android/OriginalSettings/GSensorSettings;->getIconRadius()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->ICON_RADIUS:I

    .line 110
    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->CIRCLE_RADIUS:I

    .line 112
    new-instance v0, Lcom/android/OriginalSettings/GSensorSettings$setHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/OriginalSettings/GSensorSettings$setHandler;-><init>(Lcom/android/OriginalSettings/GSensorSettings;Lcom/android/OriginalSettings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHandler:Lcom/android/OriginalSettings/GSensorSettings$setHandler;

    .line 113
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/GSensorSettings;->setContentView(I)V

    .line 114
    new-instance v0, Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;-><init>(Lcom/android/OriginalSettings/GSensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->drawView:Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

    .line 115
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/GSensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->drawView:Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Lcom/android/OriginalSettings/GSensorSettings;->init()V

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/GSensorSettings$handlersensor;

    invoke-direct {v0, p0, v3}, Lcom/android/OriginalSettings/GSensorSettings$handlersensor;-><init>(Lcom/android/OriginalSettings/GSensorSettings;Lcom/android/OriginalSettings/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorListner:Lcom/android/OriginalSettings/GSensorSettings$handlersensor;

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorListner:Lcom/android/OriginalSettings/GSensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHandler:Lcom/android/OriginalSettings/GSensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mHandler:Lcom/android/OriginalSettings/GSensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 203
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 204
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 185
    sput v3, Lcom/android/OriginalSettings/GSensorSettings;->sampleCount:I

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->drawView:Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->drawView:Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;

    #calls: Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v0, v5}, Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/OriginalSettings/GSensorSettings$GSensorSettingsView;I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f090883

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/GSensorSettings;->mSensorListner:Lcom/android/OriginalSettings/GSensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/OriginalSettings/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    .line 194
    return-void
.end method
