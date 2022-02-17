.class Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$3;
.super Ljava/lang/Object;
.source "FlyOutMenuLandscape.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;


# direct methods
.method constructor <init>(Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;)V
    .locals 0
    .param p1, "this$0"    # Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$3;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$3;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    const-string v1, "Drive"

    invoke-virtual {v0, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeAll(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape$3;->this$0:Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/elenco/snapcoder/fragments/FlyOutMenuLandscape;->closeMenusBotCode(Landroid/view/View;Z)V

    .line 61
    return-void
.end method
