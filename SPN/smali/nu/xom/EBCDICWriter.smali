.class Lnu/xom/EBCDICWriter;
.super Ljava/io/OutputStreamWriter;


# static fields
.field private static final NEL:I = 0x85


# instance fields
.field private raw:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "Cp037"

    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p1, p0, Lnu/xom/EBCDICWriter;->raw:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x85

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnu/xom/EBCDICWriter;->flush()V

    iget-object v0, p0, Lnu/xom/EBCDICWriter;->raw:Ljava/io/OutputStream;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    goto :goto_0
.end method
