.class public interface abstract Lcom/adobe/xmp/XMPMeta;
.super Ljava/lang/Object;
.source "XMPMeta.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getPacketHeader()Ljava/lang/String;
.end method

.method public abstract getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation
.end method
