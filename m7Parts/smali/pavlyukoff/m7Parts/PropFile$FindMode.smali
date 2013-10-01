.class public final enum Lpavlyukoff/m7Parts/PropFile$FindMode;
.super Ljava/lang/Enum;
.source "PropFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpavlyukoff/m7Parts/PropFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FindMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpavlyukoff/m7Parts/PropFile$FindMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lpavlyukoff/m7Parts/PropFile$FindMode;

.field public static final enum EndsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

.field public static final enum Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

.field public static final enum EqualsIgnoreCase:Lpavlyukoff/m7Parts/PropFile$FindMode;

.field public static final enum StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lpavlyukoff/m7Parts/PropFile$FindMode;

    const-string v1, "StartsWith"

    invoke-direct {v0, v1, v2}, Lpavlyukoff/m7Parts/PropFile$FindMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    new-instance v0, Lpavlyukoff/m7Parts/PropFile$FindMode;

    const-string v1, "EndsWith"

    invoke-direct {v0, v1, v3}, Lpavlyukoff/m7Parts/PropFile$FindMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->EndsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    new-instance v0, Lpavlyukoff/m7Parts/PropFile$FindMode;

    const-string v1, "Equals"

    invoke-direct {v0, v1, v4}, Lpavlyukoff/m7Parts/PropFile$FindMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

    new-instance v0, Lpavlyukoff/m7Parts/PropFile$FindMode;

    const-string v1, "EqualsIgnoreCase"

    invoke-direct {v0, v1, v5}, Lpavlyukoff/m7Parts/PropFile$FindMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->EqualsIgnoreCase:Lpavlyukoff/m7Parts/PropFile$FindMode;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lpavlyukoff/m7Parts/PropFile$FindMode;

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->StartsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    aput-object v1, v0, v2

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->EndsWith:Lpavlyukoff/m7Parts/PropFile$FindMode;

    aput-object v1, v0, v3

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->Equals:Lpavlyukoff/m7Parts/PropFile$FindMode;

    aput-object v1, v0, v4

    sget-object v1, Lpavlyukoff/m7Parts/PropFile$FindMode;->EqualsIgnoreCase:Lpavlyukoff/m7Parts/PropFile$FindMode;

    aput-object v1, v0, v5

    sput-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->ENUM$VALUES:[Lpavlyukoff/m7Parts/PropFile$FindMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpavlyukoff/m7Parts/PropFile$FindMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lpavlyukoff/m7Parts/PropFile$FindMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpavlyukoff/m7Parts/PropFile$FindMode;

    return-object v0
.end method

.method public static values()[Lpavlyukoff/m7Parts/PropFile$FindMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lpavlyukoff/m7Parts/PropFile$FindMode;->ENUM$VALUES:[Lpavlyukoff/m7Parts/PropFile$FindMode;

    array-length v1, v0

    new-array v2, v1, [Lpavlyukoff/m7Parts/PropFile$FindMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
