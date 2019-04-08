.class Lsova/five/mods/gcm/TokenMod$1;
.super Ljava/lang/Object;

# interfaces
.implements Lsova/five/mods/gcm/TokenMod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsova/five/mods/gcm/TokenMod;->requestToken()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$sb:Ljava/lang/StringBuilder;

.field private final synthetic val$wait:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lsova/five/mods/gcm/TokenMod$1;->val$sb:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lsova/five/mods/gcm/TokenMod$1;->val$wait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCallback(Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsova/five/mods/gcm/TokenMod$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsova/five/mods/gcm/TokenMod$1;->val$wait:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
