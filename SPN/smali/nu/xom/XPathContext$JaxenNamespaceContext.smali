.class Lnu/xom/XPathContext$JaxenNamespaceContext;
.super Ljava/lang/Object;

# interfaces
.implements Lnu/xom/jaxen/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/XPathContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JaxenNamespaceContext"
.end annotation


# instance fields
.field private final synthetic this$0:Lnu/xom/XPathContext;


# direct methods
.method private constructor <init>(Lnu/xom/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/XPathContext$JaxenNamespaceContext;->this$0:Lnu/xom/XPathContext;

    return-void
.end method

.method synthetic constructor <init>(Lnu/xom/XPathContext;Lnu/xom/XPathContext$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/XPathContext$JaxenNamespaceContext;-><init>(Lnu/xom/XPathContext;)V

    return-void
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnu/xom/XPathContext$JaxenNamespaceContext;->this$0:Lnu/xom/XPathContext;

    invoke-virtual {v0, p1}, Lnu/xom/XPathContext;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
