.class final Lcom/F0x1dSettings$2;
.super Ljava/lang/Object;
.source "F0x1dSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/F0x1dSettings;->setListeners(Lcom/vtosters/android/fragments/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 69
    invoke-static {}, Lcom/F0x1d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/F0x1dSettings;->triggerRebirth(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method
