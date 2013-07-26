.class public Lnu/xom/jaxen/FunctionCallException;
.super Lnu/xom/jaxen/JaxenException;


# static fields
.field private static final serialVersionUID:J = 0x6dc12aebb5d5596fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lnu/xom/jaxen/JaxenException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lnu/xom/jaxen/FunctionCallException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
