.class Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;
.super Landroid/os/Handler;
.source "SemcQualcomm7x30RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemcQualcomm7x30RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IccHandler"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1


# instance fields
.field private mRadioOn:Z

.field private mRil:Lcom/android/internal/telephony/RIL;

.field final synthetic this$0:Lcom/android/internal/telephony/SemcQualcomm7x30RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SemcQualcomm7x30RIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "ril"
    .parameter "looper"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->this$0:Lcom/android/internal/telephony/SemcQualcomm7x30RIL;

    .line 297
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->mRadioOn:Z

    .line 298
    iput-object p2, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    .line 299
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/RIL;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SemcQualcomm7x30RIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    .line 305
    return-void
.end method
