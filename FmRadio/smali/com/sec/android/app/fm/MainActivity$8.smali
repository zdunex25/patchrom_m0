.class Lcom/sec/android/app/fm/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$8;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$8;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$6400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 1797
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$8;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->access$6400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 1798
    return-void
.end method
