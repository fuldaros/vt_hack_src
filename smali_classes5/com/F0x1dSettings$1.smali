.class final Lcom/F0x1dSettings$1;
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


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/F0x1dSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/F0x1dSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u041d\u043e\u0432\u043e\u0441\u0442\u0438"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0421\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u041f\u0440\u043e\u0447\u0435\u0435"

    aput-object v3, v1, v2

    new-instance v2, Lcom/F0x1dSettings$1$1;

    invoke-direct {v2, p0}, Lcom/F0x1dSettings$1$1;-><init>(Lcom/F0x1dSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 63
    return v4
.end method
