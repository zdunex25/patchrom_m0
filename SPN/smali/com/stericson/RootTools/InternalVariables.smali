.class Lcom/stericson/RootTools/InternalVariables;
.super Ljava/lang/Object;
.source "InternalVariables.java"


# static fields
.field protected static TAG:Ljava/lang/String;

.field protected static accessGiven:Z

.field protected static getSpaceFor:Ljava/lang/String;

.field protected static mounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Mount;",
            ">;"
        }
    .end annotation
.end field

.field protected static path:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static space:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "RootTools v0.9.1"

    sput-object v0, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/InternalVariables;->accessGiven:Z

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
