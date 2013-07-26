.class Lnu/xom/Node$EmptyNamespaceContext;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyNamespaceContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnu/xom/Node$1;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/Node$EmptyNamespaceContext;-><init>()V

    return-void
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
