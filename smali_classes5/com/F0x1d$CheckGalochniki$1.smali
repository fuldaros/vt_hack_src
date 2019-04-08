.class Lcom/F0x1d$CheckGalochniki$1;
.super Ljava/lang/Object;
.source "F0x1d.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/F0x1d$CheckGalochniki;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/F0x1d$CheckGalochniki;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/F0x1d$CheckGalochniki;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/F0x1d$CheckGalochniki;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/F0x1d$CheckGalochniki$1;->this$0:Lcom/F0x1d$CheckGalochniki;

    iput-object p2, p0, Lcom/F0x1d$CheckGalochniki$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    const-string v0, "vtosters"

    iget-object v1, p0, Lcom/F0x1d$CheckGalochniki$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/F0x1d;->access$200()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u0413\u0430\u043b\u043e4\u043a\u0438 \u0441\u043b\u043e\u043c\u0430\u043b\u0438\u0441\u044c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    return-void
.end method
