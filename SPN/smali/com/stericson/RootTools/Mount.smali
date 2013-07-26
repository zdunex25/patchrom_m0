.class Lcom/stericson/RootTools/Mount;
.super Ljava/lang/Object;
.source "Mount.java"


# instance fields
.field final device:Ljava/io/File;

.field final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mountPoint:Ljava/io/File;

.field final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "path"
    .parameter "type"
    .parameter "flagsStr"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stericson/RootTools/Mount;->device:Ljava/io/File;

    .line 16
    iput-object p2, p0, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    .line 17
    iput-object p3, p0, Lcom/stericson/RootTools/Mount;->type:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    .line 19
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 23
    const-string v0, "%s on %s type %s %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/stericson/RootTools/Mount;->device:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/stericson/RootTools/Mount;->mountPoint:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/stericson/RootTools/Mount;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/stericson/RootTools/Mount;->flags:Ljava/util/Set;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
