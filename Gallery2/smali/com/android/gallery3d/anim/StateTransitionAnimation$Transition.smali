.class public final enum Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;
.super Ljava/lang/Enum;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field public static final enum Incoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field public static final enum None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field public static final enum Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    const-string v1, "Outgoing"

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    const-string v1, "Incoming"

    invoke-direct {v0, v1, v4}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoIncoming"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->None:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->$VALUES:[Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;
    .locals 1
    .parameter

    .prologue
    .line 92
    const-class v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    return-object v0
.end method

.method public static values()[Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->$VALUES:[Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0}, [Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/anim/StateTransitionAnimation$Transition;

    return-object v0
.end method
