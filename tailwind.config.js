module.exports = {
    mode: 'jit',
    purge: {
        mode: 'all',
        enabled: true,
        content: ['src/index.html'],
    },
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {},
    },
    variants: {
        extend: {
            ringWidth: ['hover', 'active'],
        },
    },
    plugins: [],
}
