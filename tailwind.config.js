module.exports = {
    mode: 'jit',
    purge: {
        mode: 'all',
        enabled: true,
        content: ['src/index.html'],
    },
    darkMode: 'class', // or 'media' or 'class'
    theme: {
        extend: {},
    },
    variants: {
        extend: {},
    },
    plugins: [],
}
