.class public Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;
.super Ljava/lang/Object;
.source "V4AJniInterface.java"


# static fields
.field private static m_JniLoadOK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9
    sput-boolean v3, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    .line 14
    :try_start_0
    const-string v1, "V4AJniUtils"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    .line 16
    const-string v1, "ViPER4Android_Utils"

    const-string v2, "libV4AJniUtils.so loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 18
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 20
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v3, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    .line 21
    const-string v1, "ViPER4Android_Utils"

    const-string v2, "[Fatal] Can\'t load libV4AJniUtils.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CheckCPUHasNEON()I
.end method

.method private static native CheckCPUHasVFP()I
.end method

.method public static CheckLibrary()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    sget-boolean v3, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v3, :cond_1

    .line 43
    .local v0, nUsable:I
    :cond_0
    :goto_0
    return v1

    .line 41
    .end local v0           #nUsable:I
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->CheckLibraryUsable()I

    move-result v0

    .line 42
    .restart local v0       #nUsable:I
    if-ne v0, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private static native CheckLibraryUsable()I
.end method

.method public static GetHashImpulseResponseArray([B)[I
    .locals 2
    .parameter "baBuffer"

    .prologue
    const/4 v0, 0x0

    .line 92
    sget-boolean v1, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    if-eqz p0, :cond_0

    .line 95
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->HashImpulseResponse([BI)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static native GetImpulseResponseInfo([B)[I
.end method

.method public static GetImpulseResponseInfoArray(Ljava/lang/String;)[I
    .locals 3
    .parameter "szIRFileName"

    .prologue
    const/4 v1, 0x0

    .line 72
    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 75
    .local v0, stringBytes:[B
    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->GetImpulseResponseInfo([B)[I

    move-result-object v1

    goto :goto_0
.end method

.method private static native HashImpulseResponse([BI)[I
.end method

.method public static IsCPUSupportNEON()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v2, :cond_1

    .line 58
    .local v0, nResult:I
    :cond_0
    :goto_0
    return v1

    .line 55
    .end local v0           #nResult:I
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->CheckCPUHasNEON()I

    move-result v0

    .line 56
    .restart local v0       #nResult:I
    const-string v2, "ViPER4Android_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CPUInfo[jni] = NEON:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsCPUSupportVFP()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v2, :cond_1

    .line 67
    .local v0, nResult:I
    :cond_0
    :goto_0
    return v1

    .line 64
    .end local v0           #nResult:I
    :cond_1
    invoke-static {}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->CheckCPUHasVFP()I

    move-result v0

    .line 65
    .restart local v0       #nResult:I
    const-string v2, "ViPER4Android_Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CPUInfo[jni] = VFP:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsLibraryUsable()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native ReadImpulseResponse([B)[B
.end method

.method public static ReadImpulseResponseToArray(Ljava/lang/String;)[B
    .locals 3
    .parameter "szIRFileName"

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-boolean v2, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->m_JniLoadOK:Z

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-object v1

    .line 84
    :cond_1
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 85
    .local v0, stringBytes:[B
    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lcom/vipercn/viper4android_v2/activity/V4AJniInterface;->ReadImpulseResponse([B)[B

    move-result-object v1

    goto :goto_0
.end method
