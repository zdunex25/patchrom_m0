.class final enum Lcom/android/OriginalSettings/SecuritySettings$PWState;
.super Ljava/lang/Enum;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PWState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/OriginalSettings/SecuritySettings$PWState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/OriginalSettings/SecuritySettings$PWState;

.field public static final enum CONFIRM:Lcom/android/OriginalSettings/SecuritySettings$PWState;

.field public static final enum CURRENT:Lcom/android/OriginalSettings/SecuritySettings$PWState;

.field public static final enum NEW:Lcom/android/OriginalSettings/SecuritySettings$PWState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    new-instance v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/SecuritySettings$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CURRENT:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    new-instance v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/android/OriginalSettings/SecuritySettings$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->NEW:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    new-instance v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/android/OriginalSettings/SecuritySettings$PWState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CONFIRM:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    .line 166
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/OriginalSettings/SecuritySettings$PWState;

    sget-object v1, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CURRENT:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/OriginalSettings/SecuritySettings$PWState;->NEW:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/OriginalSettings/SecuritySettings$PWState;->CONFIRM:Lcom/android/OriginalSettings/SecuritySettings$PWState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->$VALUES:[Lcom/android/OriginalSettings/SecuritySettings$PWState;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/OriginalSettings/SecuritySettings$PWState;
    .locals 1
    .parameter

    .prologue
    .line 166
    const-class v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;

    return-object v0
.end method

.method public static values()[Lcom/android/OriginalSettings/SecuritySettings$PWState;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/android/OriginalSettings/SecuritySettings$PWState;->$VALUES:[Lcom/android/OriginalSettings/SecuritySettings$PWState;

    invoke-virtual {v0}, [Lcom/android/OriginalSettings/SecuritySettings$PWState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/OriginalSettings/SecuritySettings$PWState;

    return-object v0
.end method
