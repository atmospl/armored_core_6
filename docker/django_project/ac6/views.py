from django.shortcuts import render
from .models import Head, Core, Arms, Legs, FCS, Booster, Generator, Units

def index(request):
    heads = Head.objects.all()
    cores = Core.objects.all()
    arms = Arms.objects.all()
    legs = Legs.objects.all()
    fcs = FCS.objects.all()
    generators = Generator.objects.all()
    boosters = Booster.objects.all()
    units = Units.objects.all()

    # 初期化しておく
    total_ap = 0
    total_bullet_defence = 0
    total_en_defence = 0
    total_explosion_defence = 0
    total_stability = 0
    recovery_performance = 0
    en_output = 0
    en_load = 0
    arm_load = 0
    total_weight = 0
    arm_load_capacity = 0
    leg_load_capacity = 0
    unique_units = list(units)
    warnings = []
    final_load_weight = 0

    context = {
        'heads': heads,
        'cores': cores,
        'arms': arms,
        'legs': legs,
        'fcs': fcs,
        'generators': generators,
        'boosters': boosters,
        'units': units,
    }

    if request.method == "POST":
        selected_head = Head.objects.get(id=request.POST['head'])
        selected_arm = Arms.objects.get(id=request.POST['arm'])
        selected_leg = Legs.objects.get(id=request.POST['leg'])
        selected_core = Core.objects.get(id=request.POST['core'])
        selected_booster = Booster.objects.get(id=request.POST['booster'])
        selected_fcs = FCS.objects.get(id=request.POST['fcs'])
        selected_generator = Generator.objects.get(id=request.POST['generator'])
        selected_unit_left_arm = Units.objects.get(id=request.POST['unit_left_arm']) if request.POST['unit_left_arm'] else None
        selected_unit_right_arm = Units.objects.get(id=request.POST['unit_right_arm']) if request.POST['unit_right_arm'] else None
        selected_unit_left_shoulder = Units.objects.get(id=request.POST['unit_left_shoulder']) if request.POST['unit_left_shoulder'] else None
        selected_unit_right_shoulder = Units.objects.get(id=request.POST['unit_right_shoulder']) if request.POST['unit_right_shoulder'] else None

        total_ap = selected_head.ap + selected_core.ap + selected_arm.ap + selected_leg.ap
        total_bullet_defence = selected_head.bullet_defence + selected_core.bullet_defence + selected_arm.bullet_defence + selected_leg.bullet_defence
        total_en_defence = selected_head.en_defence + selected_core.en_defence + selected_arm.en_defence + selected_leg.en_defence
        total_explosion_defence = selected_head.explosion_defence + selected_core.explosion_defence + selected_arm.explosion_defence + selected_leg.explosion_defence
        total_stability = selected_head.stability + selected_core.stability + selected_leg.stability
        recovery_performance = selected_head.recovery_performance

        # EN出力を整数に変換
        en_output = int(selected_generator.supply * (selected_core.output_correction / 100))
        en_load = selected_head.load + selected_core.load + selected_arm.load + selected_leg.load + selected_booster.load + selected_fcs.load

        arm_load = 0
        total_weight = selected_head.weight + selected_arm.weight + selected_leg.weight + selected_core.weight + selected_generator.weight + selected_booster.weight + selected_fcs.weight

        final_load_weight = selected_head.weight + selected_arm.weight + selected_core.weight + selected_generator.weight + selected_booster.weight + selected_fcs.weight

        # 重複チェック
        warnings = []
        used_units = set()
        unit_warnings = []

        if selected_unit_left_arm:
            if selected_unit_left_arm.id in used_units:
                warnings.append("左腕ユニットが重複しています。")
            en_load += selected_unit_left_arm.load
            arm_load += selected_unit_left_arm.weight
            total_weight += selected_unit_left_arm.weight
            used_units.add(selected_unit_left_arm.id)

        if selected_unit_right_arm:
            if selected_unit_right_arm.id in used_units:
                warnings.append("右腕ユニットが重複しています。")
            en_load += selected_unit_right_arm.load
            arm_load += selected_unit_right_arm.weight
            total_weight += selected_unit_right_arm.weight
            used_units.add(selected_unit_right_arm.id)

        if selected_unit_left_shoulder:
            if selected_unit_left_shoulder.id in used_units:
                warnings.append("左肩ユニットが重複しています。")
            en_load += selected_unit_left_shoulder.load
            total_weight += selected_unit_left_shoulder.weight
            used_units.add(selected_unit_left_shoulder.id)

        if selected_unit_right_shoulder:
            if selected_unit_right_shoulder.id in used_units:
                warnings.append("右肩ユニットが重複しています。")
            en_load += selected_unit_right_shoulder.load
            total_weight += selected_unit_right_shoulder.weight
            used_units.add(selected_unit_right_shoulder.id)

        arm_load_capacity = selected_arm.arm_load_capacity
        leg_load_capacity = selected_leg.leg_load_capacity

        # プルダウンで重複しないようにする
        unique_units = list(set(units))

        # 選択された値をコンテキストに追加
        context.update({
            'selected_head': selected_head.id,
            'selected_core': selected_core.id,
            'selected_arm': selected_arm.id,
            'selected_leg': selected_leg.id,
            'selected_fcs': selected_fcs.id,
            'selected_booster': selected_booster.id,
            'selected_generator': selected_generator.id,
            'selected_unit_left_arm': selected_unit_left_arm.id if selected_unit_left_arm else None,
            'selected_unit_right_arm': selected_unit_right_arm.id if selected_unit_right_arm else None,
            'selected_unit_left_shoulder': selected_unit_left_shoulder.id if selected_unit_left_shoulder else None,
            'selected_unit_right_shoulder': selected_unit_right_shoulder.id if selected_unit_right_shoulder else None,
            'total_ap': total_ap,
            'total_bullet_defence': total_bullet_defence,
            'total_en_defence': total_en_defence,
            'total_explosion_defence': total_explosion_defence,
            'total_stability': total_stability,
            'recovery_performance': recovery_performance,
            'en_output': en_output,
            'en_load': en_load,
            'arm_load': arm_load,
            'arm_load_capacity': arm_load_capacity,
            'total_weight': total_weight,
            'loaded_weight': final_load_weight,
            'leg_load_capacity': leg_load_capacity,
            'en_warning': en_load > en_output,
            'arm_load_warning': arm_load > arm_load_capacity,
            'weight_warning': final_load_weight > leg_load_capacity,
            'warnings': warnings,
            'unique_units': unique_units,
        })

    return render(request, 'ac6/index.html', context)