.class Lcom/android/server/ThermistorObserver$SIOPLevel;
.super Ljava/lang/Object;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIOPLevel"
.end annotation


# instance fields
.field private DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

.field private LcdFPS:I

.field private cpuMaxCore:I

.field private displayBrightness:I

.field private flashLedDisable:Z

.field private limitChargingCurrent:I

.field private lockFrequency:I

.field private name:Ljava/lang/String;

.field private realOPFreq:I

.field private temperatureThreshold:I

.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIIIIZ)V
    .locals 3
    .parameter
    .parameter "_name"
    .parameter "_temperature"
    .parameter "_frequency"
    .parameter "_cpuMaxCore"
    .parameter "_limitChargingCurrent"
    .parameter "_brightness"
    .parameter "_LcdFPS"
    .parameter "_flashLedDisable"

    .prologue
    const/4 v1, -0x1

    .line 81
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v1, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->realOPFreq:I

    .line 82
    iput-object p2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;

    .line 83
    iput p3, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I

    .line 84
    iput p4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    .line 85
    iput p5, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I

    .line 86
    iput p6, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I

    .line 87
    iput p7, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I

    .line 88
    iput p8, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I

    .line 89
    iput-boolean p9, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z

    .line 91
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    .line 98
    :goto_0
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIOPLevel : name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lockFrequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->realOPFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  cpuMaxCore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  limitChargingCurrent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  displayBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  LcdFPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  flashLedDisable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 95
    :cond_0
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->lockFrequency:I

    invoke-direct {p0, v0}, Lcom/android/server/ThermistorObserver$SIOPLevel;->newProperDVFSLock(I)Landroid/os/PowerManager$DVFSLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->temperatureThreshold:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->displayBrightness:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ThermistorObserver$SIOPLevel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->flashLedDisable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ThermistorObserver$SIOPLevel;)Landroid/os/PowerManager$DVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->DVFSMaxLock:Landroid/os/PowerManager$DVFSLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->cpuMaxCore:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->limitChargingCurrent:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ThermistorObserver$SIOPLevel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->LcdFPS:I

    return v0
.end method

.method private newProperDVFSLock(I)Landroid/os/PowerManager$DVFSLock;
    .locals 8
    .parameter "freq"

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, foundDVFSLock:Landroid/os/PowerManager$DVFSLock;
    iget-object v4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v3

    .line 106
    .local v3, supportedFreq:[I
    if-eqz v3, :cond_3

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 109
    aget v4, v3, v2

    if-gt v4, p1, :cond_2

    .line 113
    :cond_0
    array-length v4, v3

    if-ne v2, v4, :cond_1

    .line 114
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .line 117
    :cond_1
    aget v4, v3, v2

    iput v4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->realOPFreq:I

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ThermistorObserver$SIOPLevel;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/server/ThermistorObserver;->access$100(Lcom/android/server/ThermistorObserver;)Landroid/os/PowerManager;

    move-result-object v4

    const/4 v5, 0x2

    aget v6, v3, v2

    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    .end local v2           #i:I
    :goto_1
    return-object v1

    .line 108
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :cond_3
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "newProperDVFSLock : getSupportedFrequency : null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    goto :goto_1
.end method
