icon_sizes = ['16', '24', '32', '48', '64', '128']

foreach i : icon_sizes
    install_data(
        join_paths('icons', i, meson.project_name() + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor', i + 'x' + i, 'apps')
    )

    install_data(
        join_paths('icons', i, meson.project_name() + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor', i + 'x' + i + '@2', 'apps')
    )
endforeach

symbolic_icons = [
    'com.github.manexim.home.bridge.philips.hue-symbolic',
    'com.github.manexim.home.lightbulb-symbolic',
    'com.github.manexim.home.lightbulb.lifx-symbolic',
    'com.github.manexim.home.lightbulb.philips.hue-symbolic',
    'com.github.manexim.home.logo.lifx-symbolic',
    'com.github.manexim.home.logo.philips.hue-symbolic',
    'com.github.manexim.home.thing-symbolic'
]

foreach icon : symbolic_icons
    install_data(
        join_paths('icons', 'symbolic', icon + '.svg'),
        install_dir: join_paths(get_option('datadir'), 'icons', 'hicolor', 'symbolic', 'apps')
    )
endforeach

i18n.merge_file(
    input: meson.project_name() + '.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications')
)

i18n.merge_file(
    input: meson.project_name() + '.appdata.xml.in',
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po', 'extra'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)

install_data(
    meson.project_name() + '.gschema.xml',
    install_dir: join_paths(get_option('datadir'), 'glib-2.0', 'schemas')
)
