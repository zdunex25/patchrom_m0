.class public final enum Lpavlyukoff/m7Parts/PropFile$ReplaceMode;
.super Ljava/lang/Enum;
.source "PropFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpavlyukoff/m7Parts/PropFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReplaceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpavlyukoff/m7Parts/PropFile$ReplaceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

.field public static final enum Line:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

.field public static final enum Matched:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    const-string v1, "Matched"

    invoke-direct {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Matched:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    new-instance v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    const-string v1, "Line"

    invoke-direct {v0, v1, v3}, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Line:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Matched:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    aput-object v1, v0, v2

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->Line:Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    aput-object v1, v0, v3

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->ENUM$VALUES:[Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpavlyukoff/m7Parts/PropFile$ReplaceMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    return-object v0
.end method

.method public static values()[Lpavlyukoff/m7Parts/PropFile$ReplaceMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lpavlyukoff/m7Parts/PropFile$ReplaceMode;->ENUM$VALUES:[Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    array-length v1, v0

    new-array v2, v1, [Lpavlyukoff/m7Parts/PropFile$ReplaceMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
