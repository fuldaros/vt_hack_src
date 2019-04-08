.class Lcom/ui/OTAFragment$3;
.super Ljava/lang/Object;
.source "OTAFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/OTAFragment;->getDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/OTAFragment;


# direct methods
.method constructor <init>(Lcom/ui/OTAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ui/OTAFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/ui/OTAFragment$3;->this$0:Lcom/ui/OTAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ui/OTAFragment$3;->this$0:Lcom/ui/OTAFragment;

    iget-object v1, p0, Lcom/ui/OTAFragment$3;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v1}, Lcom/ui/OTAFragment;->access$300(Lcom/ui/OTAFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/OTAFragment$3;->this$0:Lcom/ui/OTAFragment;

    invoke-static {v2}, Lcom/ui/OTAFragment;->access$200(Lcom/ui/OTAFragment;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ui/OTAFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ui/OTAFragment;->downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 170
    return-void
.end method
