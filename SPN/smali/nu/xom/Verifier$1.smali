.class final Lnu/xom/Verifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# instance fields
.field private final synthetic val$empty:Lorg/xml/sax/InputSource;


# direct methods
.method constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/xom/Verifier$1;->val$empty:Lorg/xml/sax/InputSource;

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1

    iget-object v0, p0, Lnu/xom/Verifier$1;->val$empty:Lorg/xml/sax/InputSource;

    return-object v0
.end method
