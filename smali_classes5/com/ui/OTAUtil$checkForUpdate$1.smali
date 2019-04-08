.class Lcom/ui/OTAUtil$checkForUpdate$1;
.super Ljava/lang/Object;
.source "OTAUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/OTAUtil$checkForUpdate;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/OTAUtil$checkForUpdate;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/ui/OTAUtil$checkForUpdate;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ui/OTAUtil$checkForUpdate;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ui/OTAUtil$checkForUpdate$1;->this$0:Lcom/ui/OTAUtil$checkForUpdate;

    iput-object p2, p0, Lcom/ui/OTAUtil$checkForUpdate$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/F0x1d;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/OTAUtil$checkForUpdate$1;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    return-void
.end method
