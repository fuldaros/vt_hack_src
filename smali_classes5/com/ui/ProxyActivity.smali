.class public Lcom/ui/ProxyActivity;
.super Landroid/preference/PreferenceActivity;
.source "ProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0c0561

    invoke-virtual {p0, v1}, Lcom/ui/ProxyActivity;->setContentView(I)V

    const v1, 0x7f0a0b8f

    invoke-virtual {p0, v1}, Lcom/ui/ProxyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    const-string v1, "\u041f\u0440\u043e\u043a\u0441\u0438"

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/F0x1d;->getAccent()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    invoke-virtual {p0, v0}, Lcom/ui/ProxyActivity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/ui/ProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/F0x1d;->getAccent()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const v1, 0x7f14000f

    invoke-virtual {p0, v1}, Lcom/ui/ProxyActivity;->addPreferencesFromResource(I)V

    return-void
.end method
