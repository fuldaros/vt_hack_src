.class Lcom/ui/OTAFragment$1;
.super Ljava/lang/Object;
.source "OTAFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/OTAFragment;->b(Landroid/os/Bundle;)V
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
    .line 57
    iput-object p1, p0, Lcom/ui/OTAFragment$1;->this$0:Lcom/ui/OTAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/ui/OTAFragment$checkForUpdate;

    iget-object v1, p0, Lcom/ui/OTAFragment$1;->this$0:Lcom/ui/OTAFragment;

    invoke-direct {v0, v1}, Lcom/ui/OTAFragment$checkForUpdate;-><init>(Lcom/ui/OTAFragment;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ui/OTAFragment$checkForUpdate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return v2
.end method
