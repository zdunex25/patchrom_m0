.class Lnu/xom/xslt/XSLTransform$FatalListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/transform/ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnu/xom/xslt/XSLTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FatalListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnu/xom/xslt/XSLTransform$1;)V
    .locals 0

    invoke-direct {p0}, Lnu/xom/xslt/XSLTransform$FatalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    throw p1
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 0

    return-void
.end method
